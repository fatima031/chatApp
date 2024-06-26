import 'package:chatapp/auth/auth_gate.dart';
// import 'package:chatapp/auth/login_or_register.dart';
// import 'package:chatapp/auth/login_or_register.dart';
import 'package:chatapp/firebase_options.dart';
// import 'package:chatapp/pages/login.dart';
// import 'package:chatapp/pages/register.dart';
import 'package:chatapp/theme_data/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  const AuthGate(),
        theme: lightMode);
  }
}
