import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/auth/screens/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      backgroundColor: Color(0xff0b1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0b1014),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      // Body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              spacing: 13,
              children: [
                // Login Form
                LoginForm(),

                // Build Footer to Register Page
                _builFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Build Footer
  Widget _builFooter() {
    final double fontSize = 14;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
            color: Colors.white70,
            fontSize: fontSize,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'Register Now',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
        ),
      ],
    );
  }
}
