import 'package:chatapp/auth/login_or_register.dart';
import 'package:chatapp/pages/homePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //user is loged in
            if (snapshot.hasData) {
              return const Home_Page();
            }

            //user is not loged in
            else{
               return const LoginOrRegister();
            }
             
          }
          ),
    );
  }
}
