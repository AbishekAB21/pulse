
import 'package:flutter/material.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';

class ShowSnackbar{

  showSnackBar(
    String title,
    Color color,
    BuildContext context,
  ){

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(title, style: Fontstyles.SnackBarTextStyle(context),),
        backgroundColor: color,
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.down,
      )
    );
  }
}