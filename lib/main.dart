import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/core/services/auth/auth_google_services.dart';
import 'package:whatsapp/core/services/auth/auth_services.dart';
import 'package:whatsapp/fatutres/auth/cuibts/auth_cuibt.dart';
import 'package:whatsapp/fatutres/auth/screens/main/auth_gate.dart';
import 'package:whatsapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthCubit(
                authServices: AuthServices(),
                googleServices: AuthGoogleServices()),
          )
        ],
        child: MaterialApp(
          home: AuthGate(),
        ));
  }
}
