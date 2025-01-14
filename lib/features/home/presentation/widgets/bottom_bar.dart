import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/features/bottom%20bar/provider/bottombar_provider.dart';
import 'package:pulse/features/home/presentation/pages/home.dart';
import 'package:pulse/features/profile/presentation/pages/profile_screen.dart';
import 'package:pulse/features/saved/presentation/pages/saved_screen.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key});

  final pages = [
    HomeScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomProvider = Provider.of<BottomBarProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
          onTap: (value) => bottomProvider.setIndex(value),
          currentIndex: bottomProvider.currentIndex,
          iconSize: 28,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: ""),
          ]),
      body: pages[bottomProvider.currentIndex],
    );
  }
}
