import 'package:chatapp/components/myTextField.dart';
import 'package:chatapp/components/my_button.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  //email and paswd controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();

  //tap to goto register page
  final void Function()? onTap;
  Register({super.key, required this.onTap});

  //register methood
  void register() {}

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
              "Let's create an account for you",
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
              hintText: "Passeowd",
            ),

            const SizedBox(
              height: 10,
            ),
            MyTextField(
              controller: _confirmpasswordController,
              obscureText: true,
              hintText: "Confirm Password",
            ),

            const SizedBox(
              height: 25,
            ),


            //login button
            My_Button(
              text: 'Register',
              onTap: register,
            ),

            const SizedBox(
              height: 20,
            ),

            //registered now

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have an account?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now.",
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
