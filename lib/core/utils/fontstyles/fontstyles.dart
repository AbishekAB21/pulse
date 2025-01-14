import 'package:flutter/material.dart';

class Fontstyles {
// Authbox & Texfield Styles

  static TextStyle HintTextStyle(BuildContext context) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 15,
      color: Colors.grey.shade700,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle AuthBoxTitleStyle(BuildContext context, bool isDifColor) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 15,
      color: isDifColor
          ? Theme.of(context).colorScheme.tertiary
          : Theme.of(context).colorScheme.inversePrimary,
    );
  }

  static TextStyle ButtonTextStyle(BuildContext context, bool isDifColor) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: isDifColor
          ? Theme.of(context).colorScheme.inversePrimary
          : Theme.of(context).colorScheme.primary,
    );
  }

  static TextStyle ButtonTextStyle2(BuildContext context, bool isDifColor) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: isDifColor
          ? Theme.of(context).colorScheme.inversePrimary
          : Theme.of(context).colorScheme.primary,
    );
  }

// SnackBar Text
  static TextStyle SnackBarTextStyle(BuildContext context) {
    return TextStyle(
        fontFamily: 'Merriweather Sans',
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white);
  }

// Content Styles

  static TextStyle Headline1(BuildContext context) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 25,
      color: Theme.of(context).colorScheme.inversePrimary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Headline2(BuildContext context) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 20,
      color: Theme.of(context).colorScheme.inversePrimary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Headline3(BuildContext context) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 16,
      color: Theme.of(context).colorScheme.inversePrimary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle BodyTextStyle0(BuildContext context) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 13,
      color: Theme.of(context).colorScheme.inversePrimary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle BodyTextStyle1(BuildContext context) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 15,
      color: Theme.of(context).colorScheme.inversePrimary,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle BodyTextStyle2(BuildContext context) {
    return TextStyle(
      fontFamily: 'Merriweather Sans',
      fontSize: 15,
      color: Theme.of(context).colorScheme.inversePrimary,
      fontWeight: FontWeight.w600,
    );
  }
}
