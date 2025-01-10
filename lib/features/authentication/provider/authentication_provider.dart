import 'package:flutter/material.dart';
import 'package:pulse/core/reusable_widgets/snackbar.dart';
import 'package:pulse/features/authentication/db/auth_service.dart';
import 'package:pulse/features/authentication/presentation/login-screen.dart';
import 'package:pulse/features/home/presentation/pages/home.dart';

class AuthProvider extends ChangeNotifier {
  final authService = AuthService();

  // Sign in

  void signIn(String email, String password, BuildContext context) async {
    try {
      await authService.signinWithEmailPassword(email, password);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
      // SnackBar
      ShowSnackbar().showSnackBar("Logged in successfully!", Colors.green, context);
    } catch (e) {
      // Snackbar
      ShowSnackbar()
          .showSnackBar("Error loggin in : $e", Colors.green, context);
      ;
    }
  }

  // Sign up
  void signUp(String email, String password, BuildContext context) async {
    try {
      await authService.signUpWithEmailPassword(email, password);
      // Snackbar
      Navigator.pop(context);
      ShowSnackbar().showSnackBar(
          "Account Created! Please log in to continue", Colors.green, context);
    } catch (e) {
      // Snackbar
      ShowSnackbar()
          .showSnackBar("Error creating account : $e", Colors.red, context);
    }
  }

  // Log out
  void SignOut(BuildContext context) async {
    try {
      await authService.signOut();
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
       ShowSnackbar()
          .showSnackBar("Logged out successfully!", Colors.grey.shade600, context);
    } catch (e) {}
  }
}
