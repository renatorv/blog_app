import 'package:flutter/material.dart';

import '../widgets/auth_field.dart';
import '../widgets/auth_gradient_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            AuthField(hintText: 'Name'),
            SizedBox(height: 15),
            AuthField(hintText: 'Email'),
            SizedBox(height: 15),
            AuthField(hintText: 'Password'),
            SizedBox(height: 20),
            AuthGradientButton()
          ],
        ),
      ),
    );
  }
}
