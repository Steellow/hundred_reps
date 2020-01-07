import 'package:flutter/material.dart';

abstract class Styles {
  static const doneButtonText = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    letterSpacing: 8,
  );

  static var cardMainText = TextStyle(
    fontSize: 80,
    color: Colors.black,
    fontWeight: FontWeight.bold
  );

  static var cardSecondaryText = TextStyle(
    letterSpacing: 5,
  );
}