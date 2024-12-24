import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/auth/screens/main/LoginOrRegisterScreen.dart';
import 'package:whatsapp/fatutres/chats/screen/chats.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    // User State
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return _buildLoadingscreen();
          case ConnectionState.active:
            return _buildContentBasedOnSnapshot(snapshot);
          default:
            return _buildErrorScreen("Please restart the app");
        }
      },
    );
  }

  // Loading
  Widget _buildLoadingscreen() {
    return Scaffold(
      backgroundColor: Color(0xff0b1014),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      ),
    );
  }

  // Error
  Widget _buildErrorScreen(String errorMessage) {
    return Scaffold(
      backgroundColor: Color(0xff0b1014),
      body: Center(
        child: Text(
          errorMessage,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  // SnapShot
  Widget _buildContentBasedOnSnapshot(AsyncSnapshot<User?> snapshot) {
    if (snapshot.hasError) {
      return _buildErrorScreen("Please try again");
    }
    if (snapshot.hasData) {
      return Chats();
    }

    return LoginOrRegisterScreen();
  }
}
