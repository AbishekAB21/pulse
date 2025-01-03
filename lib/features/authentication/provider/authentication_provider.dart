import 'package:flutter/material.dart';
import 'package:pulse/features/authentication/db/auth_service.dart';
import 'package:pulse/features/home/presentation/pages/home.dart';

class AuthProvider extends ChangeNotifier {
  final authService = AuthService();

  // Sign in

  void signIn(String email, String password, BuildContext context) async{
    try {
      await authService.signinWithEmailPassword(email, password);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
      // SnackBar
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logged In!")));
    } catch (e) {
       // Snackbar
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("error : $e")));
    }
  }

  // Sign up
  void signUp(String email, String password, BuildContext context) async{

    try{
      await authService.signUpWithEmailPassword(email, password);
      // Snackbar
    }catch(e){
      // Snackbar
    }
  }

  // Log out
  void SignOut() async{

    try{
      await authService.signOut();
    }catch(e){}
  }
}
