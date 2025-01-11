import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';
import 'package:pulse/features/home/presentation/widgets/profile_button.dart';
import 'package:pulse/features/home/presentation/widgets/search_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: DrawerButton(/* Drawrer refraction */),
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          SearchButton(),
          SizedBox(
            width: 10,
          ),
          ProfileButton(),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Breaking News",
                    style: Fontstyles.Headline2(context),
                  ),
                  IconButton(
                      onPressed: () {
                        // Makes Sorting menu below visible (All, Sports, Business, Politics etc)
                      },
                      icon: Icon(
                        Icons.sort,
                        color: Theme.of(context).colorScheme.tertiary,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
