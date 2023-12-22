import 'package:flutter/material.dart';

class DemoProvider extends ChangeNotifier{
  int count=20000000000;
  void add(){
    print("Function called");
      count++;
      notifyListeners();
  }




}