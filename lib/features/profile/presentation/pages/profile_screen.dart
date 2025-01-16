import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/test-image2.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "test@gmail.com",
                style: Fontstyles.Headline2(context),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                    elevation: WidgetStatePropertyAll(3),
                    shadowColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.surface),
                    padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.primary),
                    
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {},
                label: Text(
                  "Contribute as a journalist",
                  style: Fontstyles.Headline3(context),
                ),
                icon: Image.asset(
                  "assets/ink.png",
                  color: Theme.of(context).colorScheme.tertiary,
                  height: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
