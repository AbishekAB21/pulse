import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';

class SocialSigninButton extends StatelessWidget {
  String buttonText;
  String imagePath;
  SocialSigninButton(
      {super.key, required this.buttonText, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.inversePrimary),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
           buttonText,
            style: Fontstyles.ButtonTextStyle(context, false),
          ),
        ],
      )),
    );
  }
}
