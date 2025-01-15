import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';

class ArticleSheet extends StatelessWidget {
  const ArticleSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 500,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/test-image2.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Fabrizio Romano",
                    style: Fontstyles.Headline3(context),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.verified,
                    color: Theme.of(context).colorScheme.tertiary,
                  )
                ],
              ),
            ),

            // Headline
            Text(
              "Omar Marmoush to Manchester City!",
              style: Fontstyles.Headline2(context),
            ),

            SizedBox(
              height: 10,
            ),

            // Article
            Flexible(
              child: ListView.separated(
                  padding: EdgeInsets.only(bottom: 20),
                  itemBuilder: (context, index) {
                    return Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: Fontstyles.BodyTextStyle2(context),
                      textAlign: TextAlign.justify,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 4),
            ),
          ],
        ),
      ),
    );
  }
}
