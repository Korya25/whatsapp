import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/auth/screens/register/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      backgroundColor: Color(0xff0b1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0b1014),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Register',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              spacing: 13,
              children: [
                // Register Form
                RegisterForm(onTap: onTap),

                // Footer to Login
                _buildFooter(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account? ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text(
            'Login Now',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
