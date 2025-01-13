import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';

class FilterButton extends StatelessWidget {
  String button_title;
  FilterButton({super.key, required this.button_title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: WidgetStateProperty.all(EdgeInsets.all(8)),
          elevation: WidgetStatePropertyAll(3),
          backgroundColor:
              WidgetStatePropertyAll(Theme.of(context).colorScheme.primary),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
          shadowColor: WidgetStatePropertyAll(Colors.black),
          overlayColor:
              WidgetStatePropertyAll(Theme.of(context).colorScheme.surface),
        ),
        child: Text(
          button_title,
          style: Fontstyles.BodyTextStyle0(context),
        ));
  }
}
