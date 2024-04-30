// import 'dart:math';

import 'package:chatapp/auth/auth_service.dart';
import 'package:chatapp/components/myTextField.dart';
import 'package:chatapp/components/my_button.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Login_page extends StatelessWidget {
  //email and paswd controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //tap to goto register page
  final void Function()? onTap;
  Login_page({super.key, required this.onTap});

  //login Methood

  void login(context) async {
    //auth service
    final authService = AuthServices();

    //try login
    try {
      await authService.signInWithEmailPassword(
          _emailController.text, _passwordController.text);
    }
    //catch an error
    catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo

            Icon(
              Icons.message_outlined,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(
              height: 50,
            ),
            //welcome back message

            Text(
              "Welcome Back , You've  been missed",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //email textfield
            MyTextField(
              controller: _emailController,
              obscureText: false,
              hintText: "Email",
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              controller: _passwordController,
              obscureText: true,
              hintText: "Password",
            ),

            const SizedBox(
              height: 25,
            ),

            //login button
            My_Button(
              text: 'Login',
              onTap: () => login(context),
            ),

            const SizedBox(
              height: 20,
            ),

            //registered now

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register now.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
