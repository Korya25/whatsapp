// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whatsapp/core/services/auth/auth_google_services.dart';
import 'package:whatsapp/core/services/auth/auth_services.dart';
import 'package:whatsapp/core/utils/custom_dialog_snakbar.dart';

import 'auth_states.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthServices authServices;
  final AuthGoogleServices googleServices;

  AuthCubit({
    required this.authServices,
    required this.googleServices,
  }) : super(AuthInitial());

  // Login With Email
  Future<void> loginWithEmail({
    required String email,
    required String password,
    required dynamic context,
  }) async {
    emit(AuthLoading());
    try {
      final userCredential = await authServices.loginWithEmail(
        email: email,
        password: password,
        context: context,
      );

      final User? user = userCredential?.user;

      if (user != null) {
        if (!user.emailVerified) {
          emit(AuthEmailNotVerified());
        } else {
          emit(AuthLoginSuccess(user: user));
        }
      } else {
        emit(AuthFailureLogin(errorMessage: "User not found."));
      }
    } catch (e) {
      emit(AuthFailureLogin(errorMessage: e.toString()));
    }
  }

  // Register With Email
  Future<void> registerWithEmail({
    required String userName,
    required String email,
    required String password,
    required dynamic context,
  }) async {
    emit(AuthLoading());
    try {
      final userCredential = await authServices.registerWithEmail(
        userName: userName,
        email: email,
        password: password,
        context: context,
      );

      final User? user = userCredential?.user;

      if (user != null) {
        emit(AuthRegistrationSuccess(user: user));
      } else {
        emit(AuthFailureRegister(
            errorMessage: "Registration failed. User not found."));
      }
    } catch (e) {
      emit(AuthFailureRegister(errorMessage: e.toString()));
    }
  }

  // Login and Register With Google
  Future<void> loginWithGoogle() async {
    emit(AuthLoading());
    try {
      final User? user = await googleServices.signInWithGoogle();
      if (user != null) {
        emit(AuthLoginSuccess(user: user));
      } else {
        emit(AuthFailureLogin(errorMessage: "Google login failed."));
      }
    } catch (e) {
      emit(AuthFailureLogin(errorMessage: e.toString()));
    }
  }

  // Reset Pass
  Future<void> resetPassword(
      {required String email,
      required BuildContext context,
      required BuildContext contextt}) async {
    emit(AuthLoading());
    try {
      await authServices.resetPassword(
        email: email,
        context: contextt,
      );
      emit(AuthPasswordResetSuccess());
      Navigator.pop(context);
      CustomDialogHandler.showCustomDialog(context,
          'we have sent you an email with instructions to recover your password');
    } catch (e) {
      emit(AuthFailureResetPass(errorMessage: e.toString()));
    }
  }

  // Log out
  Future<void> logout() async {
    emit(AuthLoading());
    try {
      await googleServices.signOut();
      emit(AuthLoggedOut());
    } catch (e) {
      emit(AuthFailureLogout(errorMessage: e.toString()));
    }
  }
}
