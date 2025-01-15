/* 

Auth Gate - will continuously listen to auth state changes

*/

import 'package:flutter/material.dart';
import 'package:pulse/features/authentication/presentation/login-screen.dart';
import 'package:pulse/features/home/presentation/widgets/bottom_bar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Loading..
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 2, 185, 136),
              ),
            ),
          );
        }

        // check if there is a valid session
        final session = snapshot.hasData ? snapshot.data!.session : null;

        if (session != null) {
          return BottomBar();
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
