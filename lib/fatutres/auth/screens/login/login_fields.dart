import 'package:flutter/material.dart';
import 'package:whatsapp/core/utils/auth_text_form_fiald_validator.dart';
import 'package:whatsapp/fatutres/auth/widgets/CustomTextFormField.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({
    super.key,
    required this.emailController,
    required this.passController,
    required this.validateForm,
  });
  final TextEditingController emailController;
  final TextEditingController passController;
  final Function validateForm;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 13,
      children: [
        // Email Field
        CustomTextFormField(
          labelText: "Email",
          hintText: 'example@gmail.com',
          textColor: Colors.white70,
          textEditingController: emailController,
          keyboardType: TextInputType.emailAddress,
          validator: AuthValidators.validateEmail,
          onSaved: (value) {
            emailController.text = value ?? "";
          },
          hintStyle: TextStyle(
            color: Colors.white70,
            fontSize: 15,
          ),
          labelStyle: TextStyle(
            color: Colors.green,
          ),
          onChanged: (_) => validateForm,
        ),

        // Pass Field
        CustomTextFormField(
          hintText: 'minimum 6 characters',
          textEditingController: passController,
          validator: AuthValidators.validatePasswordLogin,
          onSaved: (value) {
            emailController.text = value ?? "";
          },
          labelText: 'Password',
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          textColor: Colors.white70,
          hintStyle: TextStyle(
            color: Colors.white70,
            fontSize: 15,
          ),
          labelStyle: TextStyle(
            color: Colors.green,
          ),
          onChanged: (_) => validateForm,
        ),
      ],
    );
  }
}
