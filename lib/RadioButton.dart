import 'package:flutter/material.dart';

Widget radioButton(String value,int index,Color color,Function changeIndex,int currentIndex) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 18),
        child: TextButton(
          onPressed: () {
            changeIndex(index);
          },
          child: Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: currentIndex == index ? Colors.white :color,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: currentIndex == index
                ? MaterialStateProperty.all(color)
                : MaterialStateProperty.all(Colors.grey.shade400),
            padding: MaterialStateProperty.all(
              EdgeInsets.all(30),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            elevation: MaterialStateProperty.all(10),
          ),
        ),
      ),
    );
  }