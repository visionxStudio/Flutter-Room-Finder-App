import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roomfinder/src/common/service/repo.dart';

final authRepoProvider = Provider((ref) => AuthRepository());

abstract class IAuthRepository {
  Future<void> login({required String email, required String password});
  Future<void> signup({
    required String email,
    required String username,
    required String password,
  });
  Future<bool> loginWithFacebook();
  Future<bool> loginWithTwitter();
  Future<bool> loginWithGoogle();
  Future<String> logout();
}

class AuthRepository extends Repo implements IAuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Future<void> signup(
      {required String email,
      required String username,
      required String password}) async {
    await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) async {
      await user!.sendEmailVerification().then((_) async {
        addUserToDatabase(email: email, password: password, username: username);
      });
    });
  }

  Future<void> addUserToDatabase(
      {required String email,
      required String password,
      required username}) async {
    await users.doc(user!.uid).set({
      "email": email,
      "name": username,
      "password": password,
      "uid": user!.uid,
    });
  }

  @override
  Future<void> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }
  // @override
  // Future<AuthSession?> getUser() async {
  //   try {
  //     return AuthSession.fromStorage();
  //   } catch (_) {
  //     await SharedPrefProvider.instance.clear();
  //   }
  // }

  // @override
  // Future<void> signup({
  //   required String email,
  //   required String username,
  //   required String password,
  // }) async {
  //   await client.post(
  //     ApiLink.signup,
  //     data: {
  //       "name": username,
  //       "email": email,
  //       "password": password,
  //       "phone": "98********",
  //     },
  //   ).then((response) {
  //     // do something
  //   });
  // }

  // @override
  // Future<void> login({required String email, required String password}) async {
  //   // get device model
  //   final deviceInfo = DeviceInfoPlugin();
  //   late String deviceModel;
  //   if (Platform.isAndroid) {
  //     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //     deviceModel = androidInfo.model;
  //   } else if (Platform.isIOS) {
  //     IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  //     deviceModel = iosInfo.utsname.machine;
  //   } else {
  //     deviceModel = '';
  //   }

  //   // login
  //   await client.post(
  //     ApiLink.login,
  //     data: {"email": email, "password": password, "device_name": deviceModel},
  //   ).then(
  //     (response) async {
  //       final data = response;
  //       await Future.wait([
  //         AuthSession.toStorage(AuthSession.fromJson(data['payload'])),
  //       ]);
  //     },
  //   );
  // }

  @override
  Future<String> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<bool> loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<bool> loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<bool> loginWithTwitter() {
    // TODO: implement loginWithTwitter
    throw UnimplementedError();
  }
}
