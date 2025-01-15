
import 'package:flutter/material.dart';

class ArticleProvider with ChangeNotifier{


  bool _istapped = false;

  bool get istapped => _istapped;

  changeColoronTap(){
    _istapped = istapped;
    notifyListeners();
  }
}