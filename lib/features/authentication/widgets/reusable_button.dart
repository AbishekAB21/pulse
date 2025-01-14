// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';
import 'package:pulse/features/authentication/provider/authentication_provider.dart';

class ReusableButton extends StatelessWidget {
  String buttonText;
  bool isSignup;
  TextEditingController email;
  TextEditingController password;
  void Function()? ontap;
  ReusableButton(
      {super.key,
      required this.buttonText,
      required this.isSignup,
      required this.email,
      required this.password,
      this.ontap
      });

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return GestureDetector(
      onTap: () {
        print("Email: ${email.text}");
        print("Password: ${password.text}");
        print("Button tapped");
        print(isSignup);
        // isSignup? Navigate to log in and display Snackbar saying "account created"
        // Else log the user in and keep them logged in till they log out

        if (email.text.isNotEmpty && password.text.isNotEmpty) {
          isSignup
              ? authProvider.signUp(email.text, password.text, context)
              : authProvider.signIn(email.text, password.text, context);
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("data doesn't exist")));
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.tertiary),
        child: Center(
            child: Text(
          buttonText,
          style: Fontstyles.ButtonTextStyle(context, true),
        )),
      ),
    );
  }
}
