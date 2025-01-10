import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';
import 'package:pulse/features/authentication/provider/authentication_provider.dart';
import 'package:pulse/features/home/presentation/widgets/home-news-builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(
            children: [
              // heading
              Row(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 50,
                  ),
                  IconButton(onPressed: () {
                    authProvider.SignOut(context);
                  },
                  icon: Icon(Icons.logout)
                  ,)
                ],
              ),

              SizedBox(
                height: 30,
              ),

              //title
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Breaking News",
                    style: Fontstyles.Headline1(context),
                  )),
              
              //news list view
              NewsListBuilder(),
            ],
          )),
    );
  }
}
