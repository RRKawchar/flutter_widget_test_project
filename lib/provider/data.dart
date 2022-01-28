import 'package:flutter/cupertino.dart';

class Data extends ChangeNotifier{
  int value=0;
  var name='Riyazur Rohman Kawchar';
  Inrement(){
    value++;
    notifyListeners();
  }
}