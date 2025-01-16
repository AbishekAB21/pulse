// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/features/article/provider/article_provider.dart';

class MoreButton extends StatelessWidget {
  BuildContext cont;
  MoreButton({super.key, required this.cont});

  bool tapped = false;

  @override
  Widget build(BuildContext context) {

    final articleProvider = Provider.of<ArticleProvider>(context);

    return Material(
      borderRadius: BorderRadius.circular(30),
      elevation: 3,
      child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              onPressed: () {
                articleProvider.changeColoronTap();
              },
              icon: Icon(
                Icons.bookmark,
                size: 30,
                color: articleProvider.istapped
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.inversePrimary,
              ))),
    );
  }
}
