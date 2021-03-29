import 'package:bmicalculator/RadioButton.dart';
import 'package:flutter/material.dart';

class MidRadio extends StatefulWidget {

  
  @override
  _MidRadioState createState() => _MidRadioState();
}

class _MidRadioState extends State<MidRadio> {

  int currentIndex = 0;

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children:[
      radioButton("Man", 0, Colors.blue, changeIndex, currentIndex),
      radioButton("Woman", 1, Colors.pink, changeIndex, currentIndex),
    ]);
  }
}