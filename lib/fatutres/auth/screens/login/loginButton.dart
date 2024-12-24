import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/fatutres/auth/cuibts/auth_cuibt.dart';
import 'package:whatsapp/fatutres/auth/cuibts/auth_states.dart';
import 'package:whatsapp/fatutres/auth/widgets/action_auth_button.dart';
import 'package:whatsapp/fatutres/auth/widgets/custom_login_google.dart';

class LoginButtons extends StatelessWidget {
  //final bool isValid;
  final double spacing;
  final String email;
  final String password;

  const LoginButtons({
    super.key,
    //  required this.isValid,
    this.spacing = 13,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    final authCubit = context.watch<AuthCubit>();

    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        final isLoading = state is AuthLoading;

        return Column(
          spacing: spacing,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is AuthFailureLogin) {
                  return Text(
                    state.errorMessage,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  );
                } else {
                  return SizedBox(
                    height: 0,
                  );
                }
              },
            ),

            // Login Button
            CustomActionAuthButton(
              onTap: () {
                authCubit.loginWithEmail(
                  email: email,
                  password: password,
                  context: context,
                );
              },
              title: isLoading
                  ? CircularProgressIndicator()
                  : Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              backgroundColor: Colors.blue,
              //isEnabled: isValid && !isLoading,
            ),

            /*
 CustomActionAuthButton(
              onTap: isValid && !isLoading
                  ? () {
                      authCubit.loginWithEmail(
                        email: email,
                        password: password,
                        context: context,
                      );
                    }
                  : null,
              title: isLoading
                  ? CircularProgressIndicator()
                  : Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              backgroundColor: isValid ? Colors.blue : Colors.grey,
              //isEnabled: isValid && !isLoading,
            ),
            */

            // Google Login Button
            CustomLoginWithGoogle(
              onTap: () {
                authCubit.loginWithGoogle();
              },
              title: 'Login with Google',
              backgroundColor: Colors.green,
              loading: authCubit.state is AuthLoading ? true : false,
            ),
          ],
        );
      },
    );
  }
}
