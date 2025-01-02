import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/features/splash/provider/splash-screen-provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // goHome
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SplashScreenProvider>(context, listen: false).goHome(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Image.asset(
          "assets/logo.png",
          width: 80,
        ),
      ),
    );
  }
}
