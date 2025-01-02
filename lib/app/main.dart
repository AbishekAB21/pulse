import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/core/utils/theme/dark-theme.dart';
import 'package:pulse/core/utils/theme/light-theme.dart';
import 'package:pulse/features/auth%20screens/log-in/login-screen.dart';
import 'package:pulse/features/splash/presentation/pages/splash-screen.dart';
import 'package:pulse/features/splash/provider/splash-screen-provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => SplashScreenProvider(),
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
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
