import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomfinder/src/core/form_inputs/email.dart';
import 'package:roomfinder/src/core/form_inputs/name.dart';
import 'package:roomfinder/src/core/form_inputs/password.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  /// State of Signup form
  const factory SignupState({
    /// Formz input
    required Email email,
    required Password password,
    required Password confirmPassword,
    required Name userName,
    // required bool isPasswordMatched,
    required FormzStatus status,

    /// Error message if form submission is failed
    String? errorMessage,
  }) = _SignupState;

  /// Initial state of Signup form
  factory SignupState.initial() => const SignupState(
        email: Email.pure(),
        password: Password.pure(),
        confirmPassword: Password.pure(),
        userName: Name.pure(),
        // isPasswordMatched: true,
        status: FormzStatus.pure,
      );
}
