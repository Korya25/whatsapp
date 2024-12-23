import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/core/services/auth/auth_error_handler.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Get current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  // Check if username exists
  Future<bool> _isUsernameTaken(String username) async {
    final query = await _firestore
        .collection("Users")
        .where('username', isEqualTo: username)
        .get();
    return query.docs.isNotEmpty;
  }

  // Register with Email
  Future<UserCredential?> registerWithEmail({
    required String userName,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      // Check if username is taken
      bool usernameTaken = await _isUsernameTaken(userName);
      if (usernameTaken) {
        throw 'Username is use';
      }

      // Create user
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Save user info in Firestore
      _firestore.collection("Users").doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': email,
        'username': userName,
      });
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw handleRegisterError(e.code);
    } catch (e) {
      throw e.toString();
    }
  }

  // Login with Email
  Future<UserCredential?> loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      // Sign user in
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Save user info if it doesn't already exist
      _firestore.collection("Users").doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': email,
        'username': userCredential.user!.displayName,
      });
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw handleLoginError(e.code);
    } catch (e) {
      throw 'An unexpected error occurred. Please try again.';
    }
  }

  // Reset Password
  Future<void> resetPassword(
      {required String email, required BuildContext context}) async {
    try {
      if (email.isEmpty) {
        throw 'Please enter your email address.';
      }
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw handleLoginError(e.code);
    } catch (e) {
      throw 'An unexpected error occurred. Please try again later.';
    }
  }
}
