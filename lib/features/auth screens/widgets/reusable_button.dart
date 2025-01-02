import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';

class ReusableButton extends StatelessWidget {
  String buttonText;
  bool isSignup;
  ReusableButton({super.key, required this.buttonText, required this.isSignup});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        // isSignup? Navigate to log in and display Snackbar saying "account created"
        // Else log the user in and keep them logged in till they log out
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
