

import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
   surface: Colors.grey.shade900,
   inversePrimary: Colors.grey.shade200,
   primary: Colors.grey.shade800,
   secondary: Colors.grey.shade100,
   tertiary: Color.fromARGB(255, 2, 185, 136)
  )
);