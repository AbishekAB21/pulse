import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';

class NewsListBuilder extends StatelessWidget {
  const NewsListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/test-image.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sports",
                style: Fontstyles.HintTextStyle(context),
                overflow: TextOverflow.clip,
              ),
              SizedBox(height: 5,),
              Container(
                width: MediaQuery.of(context).size.width - 150,
                child: Text(
                  "Omar Marmoush to Manchester City?",
                  style: Fontstyles.Headline3(context),
                  overflow: TextOverflow.clip,
                ),
              ),
              SizedBox(height: 10,),

              Row(
                children: [

                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage("assets/test-image2.jpg"),
                  ),
                  SizedBox(width: 5,),
                  Text("Fabrizio Romano • ", style: Fontstyles.BodyTextStyle0(context),),
                  Text("Jan13,2025", style: Fontstyles.BodyTextStyle0(context))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
