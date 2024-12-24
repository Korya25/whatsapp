import 'package:flutter/material.dart';
import 'package:whatsapp/core/utils/auth_text_form_fiald_validator.dart';
import 'package:whatsapp/fatutres/auth/widgets/CustomTextFormField.dart';

class RegisterFields extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController usernameController;
  final Function validateForm;
  final double spacing;

  const RegisterFields({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.usernameController,
    required this.validateForm,
    this.spacing = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: spacing,
      children: [
        CustomTextFormField(
          labelText: 'Email',
          hintText: 'example@gmail.com',
          textColor: Colors.white70,
          textEditingController: emailController,
          keyboardType: TextInputType.emailAddress,
          hintStyle: TextStyle(
            color: Colors.white70,
            fontSize: 15,
          ),
          labelStyle: TextStyle(
            color: Colors.green,
          ),
          validator: AuthValidators.validateEmail,
          onChanged: (_) => validateForm(),
          autovalidateMode:
              AutovalidateMode.onUserInteraction, // تفعيل التحقق التلقائي
          onSaved: (String? value) {
            emailController.text = value ?? '';
          },
        ),
        CustomTextFormField(
          labelText: 'Password',
          hintText: 'minimum 6 characters',
          obscureText: true,
          textColor: Colors.white70,
          textEditingController: passwordController,
          keyboardType: TextInputType.visiblePassword,
          hintStyle: TextStyle(
            color: Colors.white70,
            fontSize: 15,
          ),
          labelStyle: TextStyle(
            color: Colors.green,
          ),
          validator: AuthValidators.validatePasswordRegister,
          onChanged: (_) => validateForm(),
          autovalidateMode:
              AutovalidateMode.onUserInteraction, // تفعيل التحقق التلقائي
          onSaved: (String? value) {
            passwordController.text = value ?? '';
          },
        ),
        CustomTextFormField(
          labelText: 'Username',
          hintText: 'username',
          textColor: Colors.white70,
          textEditingController: usernameController,
          keyboardType: TextInputType.name,
          hintStyle: TextStyle(
            color: Colors.white70,
            fontSize: 15,
          ),
          labelStyle: TextStyle(
            color: Colors.green,
          ),
          validator: AuthValidators.validateUsername,
          onChanged: (_) => validateForm(),
          autovalidateMode:
              AutovalidateMode.onUserInteraction, // تفعيل التحقق التلقائي
          onSaved: (String? value) {
            usernameController.text = value ?? '';
          },
        ),
      ],
    );
  }
}
