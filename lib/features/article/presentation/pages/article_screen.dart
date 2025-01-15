import 'package:flutter/material.dart';
import 'package:pulse/core/reusable_widgets/back_button.dart';
import 'package:pulse/features/article/presentation/widgets/article_sheet.dart';
import 'package:pulse/features/article/presentation/widgets/more_button.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/test-image.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackNavButton(cont: context),
                  MoreButton(cont: context)
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (context) {
            return ArticleSheet();
          },
        ));
  }
}
