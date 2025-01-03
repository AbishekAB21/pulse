import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';
import 'package:pulse/features/authentication/provider/authentication_provider.dart';

class ReusableButton extends StatelessWidget {
  String buttonText;
  bool isSignup;
  String? email;
  String? password;
  ReusableButton(
      {super.key,
      required this.buttonText,
      required this.isSignup,
      this.email,
      this.password});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
   


    return GestureDetector(
      onTap: () {
        print("Button tapped");
        print(isSignup);
        // isSignup? Navigate to log in and display Snackbar saying "account created"
        // Else log the user in and keep them logged in till they log out

        isSignup
            ? authProvider.signUp(email!, password!, context)
            : authProvider.signIn(email!, password!, context);
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
