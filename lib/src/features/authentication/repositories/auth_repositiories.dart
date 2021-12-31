import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roomfinder/src/common/service/repo.dart';
import 'package:roomfinder/src/common/utils/storage/base_storage.dart';

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
  Future<void> login({required String email, required String password}) async {
    await _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((UserCredential userCredential) async {
      // check if user is null or not

      if (userCredential.user != null) {
        // save user to the database in here
        print(userCredential.user!.uid);
        await shareprefrence.save("userId", userCredential.user!.uid);
      } else {
        return;
      }
    });
  }

  @override
  Future<String> logout() {
    throw UnimplementedError();
  }

  @override
  Future<bool> loginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future<bool> loginWithGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<bool> loginWithTwitter() {
    throw UnimplementedError();
  }
}
