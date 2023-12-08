import 'package:flutter/material.dart';

import '../../../../core/componenets.dart';
import '../../../home/presentation/view/home_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height:40),
          backNavigation(context),
          signInText(text: 'Sign In'),

          defaultFormField(
            controller: nameController,
            hintText: 'First & Last Name',
            type: TextInputType.emailAddress,
          ),
          defaultFormField(
            controller: emailController,
            hintText: 'Email Address',
            type: TextInputType.emailAddress,
          ),
          defaultFormField(
            controller: emailController,
            hintText: 'Optional Group Special Code',
            type: TextInputType.text,
          ),
          defaultFormField(
            controller: phoneController,
            hintText: 'Mobile Phone',
            type: TextInputType.phone,
          ),
          defaultFormField(
            controller: passwordController,
            hintText: 'Password',
            type: TextInputType.visiblePassword,
          ),
          stayLoginIn(text: "Please sign me up for the monthly newsletter."
          ),
          defaultLogInButton(text: 'Sign Up',
              function:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
              }
          ),
        ],
      ),
    );
  }
}
