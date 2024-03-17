import 'package:flutter/cupertino.dart';

extension TextControllerExt on TextEditingController{
  void updateIfNotEqual(String value){
    if(text == value) {
      return;
    }
    text = value;
  }
}