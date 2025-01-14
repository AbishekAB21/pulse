// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pulse/features/authentication/presentation/sign-up.dart';
import 'package:pulse/features/authentication/widgets/auth-box.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
        body: Stack(
      children: [
        // background
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/newspaper_bg.jpeg"),
                  fit: BoxFit.cover)),
        ),

        // Authentication section
        Positioned(
            bottom: 30,
            left: 10,
            right: 10,
            child: AuthBox(
              isSignUp: false,
              email: _emailController,
              password: _passwordController,
              navgationText1: "Don't have an account? ",
              navgationText2: "Sign up",
              navigate: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  )),
            ))
      ],
    ));
  }
}
