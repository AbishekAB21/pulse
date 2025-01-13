
import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier{

  bool _filterBool = false;

  bool get filterBool => _filterBool;

  toggleFilterVisiblity(){
    _filterBool = !_filterBool;
    notifyListeners();
  }
}