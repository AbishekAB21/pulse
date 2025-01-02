import 'package:flutter/material.dart';
import 'package:pulse/features/home/presentation/pages/home.dart';

class SplashScreenProvider with ChangeNotifier {
  Future<void> goHome(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }
}