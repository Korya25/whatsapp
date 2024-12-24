import 'package:flutter/material.dart';
import 'package:whatsapp/fatutres/auth/screens/login/loginButton.dart';
import 'package:whatsapp/fatutres/auth/screens/login/login_fields.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // TextEditingController
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  // Varibles
  bool isValid = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // validate Form
  void validateForm() {
    if (formKey.currentState!.validate()) {
      setState(() {
        isValid = true;
      });
    } else {
      setState(() {
        isValid = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 13,
        children: [
          // Login Fields
          LoginFields(
            emailController: emailController,
            passController: passController,
            validateForm: validateForm,
          ),
          // Forget Pass Button
          GestureDetector(
            onTap: () {},
            child: Text(
              "Forget Password?",
              style: TextStyle(
                color: Colors.green,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // Login Button
          LoginButtons(
            isValid: isValid,
            email: emailController.text,
            password: passController.text,
          ),
        ],
      ),
    );
  }
}
