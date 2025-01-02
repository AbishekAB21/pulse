import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';
import 'package:pulse/features/auth%20screens/sign-up/sign-up.dart';
import 'package:pulse/features/auth%20screens/widgets/auth-box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            bottom: 10,
            left: 10,
            right: 10,
            child: AuthBox(
              isSignUp: false,
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