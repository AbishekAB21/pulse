import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/features/authentication/provider/authentication_provider.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(25),
      child: Container(
       
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(25)),
          child: IconButton(
              onPressed: () {
                authProvider.SignOut(context);
              },
              icon: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.secondary,
              ))),
    );
  }
}