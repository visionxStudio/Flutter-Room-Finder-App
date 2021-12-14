// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupStateTearOff {
  const _$SignupStateTearOff();

  _SignupState call(
      {required Email email,
      required Password password,
      required Password confirmPassword,
      required Name userName,
      required FormzStatus status,
      String? errorMessage,
      String? successMessage}) {
    return _SignupState(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      userName: userName,
      status: status,
      errorMessage: errorMessage,
      successMessage: successMessage,
    );
  }
}

/// @nodoc
const $SignupState = _$SignupStateTearOff();

/// @nodoc
mixin _$SignupState {
  /// Formz input
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  Name get userName =>
      throw _privateConstructorUsedError; // required bool isPasswordMatched,
  FormzStatus get status => throw _privateConstructorUsedError;

  /// Error message if form submission is failed
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      Password confirmPassword,
      Name userName,
      FormzStatus status,
      String? errorMessage,
      String? successMessage});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? userName = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as Name,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: successMessage == freezed
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(
          _SignupState value, $Res Function(_SignupState) then) =
      __$SignupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      Password confirmPassword,
      Name userName,
      FormzStatus status,
      String? errorMessage,
      String? successMessage});
}

/// @nodoc
class __$SignupStateCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(
      _SignupState _value, $Res Function(_SignupState) _then)
      : super(_value, (v) => _then(v as _SignupState));

  @override
  _SignupState get _value => super._value as _SignupState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? userName = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_SignupState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as Name,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: successMessage == freezed
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.email,
      required this.password,
      required this.confirmPassword,
      required this.userName,
      required this.status,
      this.errorMessage,
      this.successMessage});

  @override

  /// Formz input
  final Email email;
  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final Name userName;
  @override // required bool isPasswordMatched,
  final FormzStatus status;
  @override

  /// Error message if form submission is failed
  final String? errorMessage;
  @override
  final String? successMessage;

  @override
  String toString() {
    return 'SignupState(email: $email, password: $password, confirmPassword: $confirmPassword, userName: $userName, status: $status, errorMessage: $errorMessage, successMessage: $successMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, confirmPassword,
      userName, status, errorMessage, successMessage);

  @JsonKey(ignore: true)
  @override
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required Email email,
      required Password password,
      required Password confirmPassword,
      required Name userName,
      required FormzStatus status,
      String? errorMessage,
      String? successMessage}) = _$_SignupState;

  @override

  /// Formz input
  Email get email;
  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  Name get userName;
  @override // required bool isPasswordMatched,
  FormzStatus get status;
  @override

  /// Error message if form submission is failed
  String? get errorMessage;
  @override
  String? get successMessage;
  @override
  @JsonKey(ignore: true)
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
