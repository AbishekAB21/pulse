import 'package:flutter/material.dart';
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
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Logged In!")));
    } catch (e) {
      // Snackbar

      // the controller value is not getting to the auth service
      // Use the snackbar as ref

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("error : $e")));
    }
  }

  // Sign up
  void signUp(String email, String password, BuildContext context) async {
    try {
      await authService.signUpWithEmailPassword(email, password);
      // Snackbar
    } catch (e) {
      // Snackbar
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
    } catch (e) {}
  }
}
