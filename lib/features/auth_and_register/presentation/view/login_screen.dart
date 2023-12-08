import 'package:bookly_app/features/auth_and_register/presentation/view/register_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/componenets.dart';
import '../../../../core/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();

    TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          backNavigation(context),
          signInText(text: 'Sign In'),
          defaultFormField(
            controller: emailController,
            hintText: 'Optional Group Special Code',
            type: TextInputType.text,
          ),
          defaultFormField(
            controller: emailController,
            hintText: 'Email Address',
            type: TextInputType.emailAddress,
          ),
          defaultFormField(
            controller: passwordController,
            hintText: 'Password',
            type: TextInputType.visiblePassword,
          ),
          stayLoginIn(text: 'Stay Logged In', secText: 'Forgot Your Password?'),
          defaultLogInButton(text: 'Sign In', function: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondTextColor),
              ),
             TextButton(
               child:Text(
                  'Sign In',
               ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
