// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BackNavButton extends StatelessWidget {
  BuildContext cont;
  BackNavButton({super.key, required this.cont});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      elevation: 3,
      child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              onPressed: () {
                Navigator.of(cont).pop();
              },
              icon: Icon(
                Icons.navigate_before,
                size: 30,
              ))),
    );
  }
}
