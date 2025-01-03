import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';
import 'package:pulse/features/authentication/widgets/reusable_button.dart';
import 'package:pulse/features/authentication/widgets/reusable_textfield.dart';
import 'package:pulse/features/authentication/widgets/social-sign-in-button.dart';

class AuthBox extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController password;
  void Function()? navigate;
  final String navgationText1;
  final String navgationText2;
  final bool isSignUp;

  AuthBox({
    super.key,
    required this.email,
    required this.password,
    required this.navgationText1,
    required this.navgationText2,
    required this.navigate,
    required this.isSignUp,
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ReusableTextField(
                      hinttext: "Email",
                      cntrlr: email,
                      isObscure: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReusableTextField(
                      hinttext: "Password",
                      cntrlr: password,
                      isObscure: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReusableButton(
                      buttonText: isSignUp ? "Sign up" : "Continue",
                      isSignup: isSignUp,
                      email: email.text,
                      password: password.text,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Or",
                      style: Fontstyles.AuthBoxTitleStyle(context, false),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SocialSigninButton(
                        buttonText: isSignUp
                            ? "Sign up with Google"
                            : "Continue with Google",
                        imagePath: "assets/google.png"),
                    SizedBox(
                      height: 10,
                    ),
                    SocialSigninButton(
                        buttonText: isSignUp
                            ? "Sign up with Apple"
                            : "Continue with Apple",
                        imagePath: "assets/apple-logo.png"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          navgationText1,
                          style: Fontstyles.AuthBoxTitleStyle(context, false),
                        ),
                        GestureDetector(
                          onTap: navigate,
                          child: Text(
                            navgationText2,
                            style: Fontstyles.AuthBoxTitleStyle(context, true),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Forgot Password ?",
                      style: Fontstyles.AuthBoxTitleStyle(context, true),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
