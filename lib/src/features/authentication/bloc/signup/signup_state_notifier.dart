import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:roomfinder/src/core/form_inputs/email.dart';
import 'package:roomfinder/src/core/form_inputs/name.dart';
import 'package:roomfinder/src/core/form_inputs/password.dart';
import 'package:roomfinder/src/features/authentication/bloc/signup/signup_state.dart';
import 'package:roomfinder/src/features/authentication/repositories/auth_repositiories.dart';

final signupStateProvider =
    StateNotifierProvider.autoDispose<SignUpNotifier, SignupState>(
  (ref) => SignUpNotifier(ref.watch(authRepoProvider)),
);

class SignUpNotifier extends StateNotifier<SignupState> {
  SignUpNotifier(this._authRepo) : super(SignupState.initial());
  final AuthRepository _authRepo;

  /// checking if [Email] is valid
  void emailChanged(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      status: Formz.validate([email]),
    );
  }

  /// checking if [Password] is valid
  void passwordChanged(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(
      password: password,
      status: Formz.validate([password]),
    );
  }

  /// Checking if [Name] is valid
  void nameChanged(String value) {
    final name = Name.dirty(value);
    state = state.copyWith(
      userName: name,
      status: Formz.validate([name]),
    );
  }

  /// checking if confirm [Password] is valid
  void confirmPasswordChanged(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(
      confirmPassword: password,
      status: Formz.validate([password]),
    );
  }

  Future<void> signup() async {
    if (!state.status.isValidated) return;

    state = state.copyWith(status: FormzStatus.submissionInProgress);

    try {
      // TODO signup in here
    } catch (e) {
      //  catch Network exceptions in here
      state = state.copyWith(status: FormzStatus.submissionSuccess);
    }
  }
}
