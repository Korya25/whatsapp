import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthFailureLogin extends AuthState {
  final String errorMessage;
  AuthFailureLogin({required this.errorMessage});
}

class AuthFailureRegister extends AuthState {
  final String errorMessage;
  AuthFailureRegister({required this.errorMessage});
}

class AuthFailureResetPass extends AuthState {
  final String errorMessage;
  AuthFailureResetPass({required this.errorMessage});
}

class AuthFailureLogout extends AuthState {
  final String errorMessage;
  AuthFailureLogout({required this.errorMessage});
}

class AuthLoginSuccess extends AuthState {
  final User user;
  AuthLoginSuccess({required this.user});
}

class AuthRegistrationSuccess extends AuthState {
  final User user;
  AuthRegistrationSuccess({required this.user});
}

class AuthEmailNotVerified extends AuthState {}

class AuthPasswordResetSuccess extends AuthState {}

class AuthLoggedOut extends AuthState {}
