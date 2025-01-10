import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';

class ReusableTextField extends StatelessWidget {
  String hinttext;
  bool isObscure;
  TextEditingController cntrlr;
  ReusableTextField(
      {super.key,
      required this.hinttext,
      required this.cntrlr,
      required this.isObscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        controller: cntrlr,
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
        obscureText: isObscure,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            hintText: hinttext,
            hintStyle: Fontstyles.HintTextStyle(context)),
      ),
    );
  }
}
