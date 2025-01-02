import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';
import 'package:pulse/features/home/presentation/widgets/home-news-builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(
            children: [
              // heading
              Image.asset(
                "assets/logo.png",
                width: 50,
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
