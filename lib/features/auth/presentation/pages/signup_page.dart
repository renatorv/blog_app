import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/theme/app_palete.dart';
import '../widgets/auth_field.dart';
import '../widgets/auth_gradient_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up.',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              AuthField(
                hintText: 'Name',
                controller: nameController,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 20),
              const AuthGradientButton(),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Already have a acconut? ',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppPalete.gradient2,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
