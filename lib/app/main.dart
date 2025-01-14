import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/core/utils/theme/dark-theme.dart';
import 'package:pulse/features/authentication/provider/authentication_provider.dart';
import 'package:pulse/features/bottom%20bar/provider/bottombar_provider.dart';
import 'package:pulse/features/home/provider/home_screen_provider.dart';
import 'package:pulse/features/splash/presentation/pages/splash-screen.dart';
import 'package:pulse/features/splash/provider/splash-screen-provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // Supabase
  await Supabase.initialize(
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhid3p6eXdmeGNubmV5bnhiZWtvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE2ODg1NTYsImV4cCI6MjA0NzI2NDU1Nn0.OVbN30Hod3qd9vqzgqVI8rIMkjATHrb94VMuX0azAfs",
      url: "https://hbwzzywfxcnneynxbeko.supabase.co");

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => SplashScreenProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => AuthProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => HomeScreenProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => BottomBarProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
