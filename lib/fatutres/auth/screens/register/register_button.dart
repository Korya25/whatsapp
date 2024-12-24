import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/fatutres/auth/cuibts/auth_cuibt.dart';
import 'package:whatsapp/fatutres/auth/cuibts/auth_states.dart';
import 'package:whatsapp/fatutres/auth/widgets/PassResetSuccessMessage.dart';
import 'package:whatsapp/fatutres/auth/widgets/action_auth_button.dart';

class RegisterButtons extends StatelessWidget {
  final bool isValid;
  final bool isLoading;
  final double spacing;
  final String email;
  final String password;
  final String userName;

  const RegisterButtons({
    super.key,
    required this.isValid,
    required this.isLoading,
    this.spacing = 0,
    required this.email,
    required this.password,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    final authCubit = context.watch<AuthCubit>();

    return Column(
      spacing: spacing,
      children: [
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is AuthFailureRegister) {
              return Text(
                state.errorMessage,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.red, fontSize: 15),
              );
            } else {
              return Container();
            }
          },
        ),
        PassResetSuccessMessage(),
        CustomActionAuthButton(
          onTap: isValid && !isLoading
              ? () {
                  authCubit.registerWithEmail(
                    email: email,
                    password: password,
                    userName: userName,
                    context: context,
                  );
                }
              : null,
          title: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
          backgroundColor: isValid ? Colors.green : Colors.grey,
          isEnabled: isValid && !isLoading,
        ),
      ],
    );
  }
}
