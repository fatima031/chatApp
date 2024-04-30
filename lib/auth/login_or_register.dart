import 'package:chatapp/pages/login.dart';
import 'package:chatapp/pages/register.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially show login page

  bool showLoginPage = true;

  // toggle between login and register page

  void togglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login_page(
        onTap: togglePage ,
      );
    } else
      return Register(
        onTap: togglePage,
      );
  }
}
