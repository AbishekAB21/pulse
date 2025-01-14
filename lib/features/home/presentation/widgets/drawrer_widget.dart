import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';
import 'package:pulse/features/authentication/provider/authentication_provider.dart';

class DrawrerWidget extends StatelessWidget {
  const DrawrerWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final authProvider = Provider.of<AuthProvider>(context);
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shadowColor: Colors.black,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Column(
        children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                width: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "P u l s e",
                style: Fontstyles.Headline1(context),
              )
            ],
          )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
                  backgroundColor: WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.tertiary),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)))),
              onPressed: () {
                authProvider.SignOut(context);
              },
              child: Text(
                "Sign out",
                style: Fontstyles.ButtonTextStyle2(context, true),
              ))
        ],
      ),
    );
  }
}
