import 'package:firebaseapp/uihelper/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emaiController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  final void Function()? ontap;

  LoginPage({super.key, required this.ontap});

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              size: 60,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                //color: Theme.of(context).colorScheme.primary),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.myTextField('Email',emaiController),
            UiHelper.myTextField('Password',pwController),
            SizedBox(
              height: 5,
            ),
            UiHelper.myButton('Login', login),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not have an account? ',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                GestureDetector(
                  onTap: ontap,
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
