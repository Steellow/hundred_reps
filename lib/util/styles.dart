import 'package:flutter/material.dart';

abstract class Styles {
  static const doneButtonText = TextStyle(
    color: Colors.redAccent,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    letterSpacing: 5,
  );

  static var cardMainText = TextStyle(
    fontSize: 120,
    // color: Colors.black,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static var cardSecondaryText = TextStyle(
    letterSpacing: 5,
    fontSize: 20,
    color: Colors.white,
  );

  static var timerText = TextStyle(
    fontSize: 36,
    letterSpacing: 5,
    color: Colors.black54,
  );

  static var goodJobText = TextStyle(
    fontSize: 50,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static List<Color> bgColors = <Color>[
    Colors.red[400],
    Colors.redAccent[100],
  ];
}
