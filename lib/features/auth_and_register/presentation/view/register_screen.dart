import 'package:flutter/material.dart';

import '../../../../core/componenets.dart';
import '../../../home/presentation/view/home_screen.dart';
import '../../../home/presentation/widgets/bottom_navigation.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController codeController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height:40),
            backNavigation(context),
            Align(
                alignment:
                Alignment.topLeft,
                child: signInText(text: 'Sign In')),

            defaultFormField(
              controller: nameController,
              hintText: 'First & Last Name',
              type: TextInputType.text,
            ),
            defaultFormField(
              controller: emailController,
              hintText: 'Email Address',
              type: TextInputType.emailAddress,
            ),
            defaultFormField(
              controller: codeController,
              hintText: 'Optional Group Special Code',
              type: TextInputType.phone,
            ),
            defaultFormField(
              controller: phoneController,
              hintText: 'Mobile Phone',
              type: TextInputType.phone,
            ),
            defaultFormField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            //  hintText: '***********',
              type: TextInputType.visiblePassword,
            ),
            stayLoginIn(text: "Please sign me up for the monthly newsletter."
            ),
            defaultLogInButton(text: 'Sign Up',
                function:(){
            //  if(nameController!= null )
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavigation()));
                }
            ),
          ],
        ),
      ),
    );
  }
}
