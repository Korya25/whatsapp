import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/auth/screens/login/login_page.dart';
import 'package:whatsapp/fatutres/auth/screens/register/register_page.dart';

class LoginOrRegisterScreen extends StatefulWidget {
  const LoginOrRegisterScreen({super.key});

  @override
  State<LoginOrRegisterScreen> createState() => _LoginOrRegisterScreenState();
}

class _LoginOrRegisterScreenState extends State<LoginOrRegisterScreen> {
  bool showLoginPage = true;
  void togglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 30),
        child: showLoginPage
            ? LoginPage(
                onTap: togglePage,
              )
            : RegisterScreen(
                onTap: togglePage,
              ),
      ),
    );
  }
}
