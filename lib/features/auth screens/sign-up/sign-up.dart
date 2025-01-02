import 'package:flutter/material.dart';
import 'package:pulse/features/auth%20screens/log-in/login-screen.dart';
import 'package:pulse/features/auth%20screens/widgets/auth-box.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Background
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
            bottom: 10,
            left: 10,
            right: 10,
            child: AuthBox(
              isSignUp: true,
              navgationText1: "Already have an account? ",
              navgationText2: "Log in",
              navigate: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  )),
            ))
      ],
    ));
  }
}