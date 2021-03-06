import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    decoration: TextDecoration.none, // Specifying decoration and fontWeight because this TStyle is used in Hero Widgets. Widget can't get instance of Theme during the Hero animation and tries to display default decoration (2 ugly yellow lines) unless specified here. (Same applies for fontWeight)
    fontWeight: FontWeight.normal,
  );

  static var goodJobText = TextStyle(
    fontSize: 50,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    shadows: textShadows,
  );

  static var descriptionText = TextStyle(
    color: Colors.grey[50],
    shadows: textShadows,
    height: 1.25,
  );

  static var aboutButtonText = TextStyle(
    letterSpacing: 7,
    fontSize: 16,
    color: Colors.white,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.normal,
  );

  static var titleText = GoogleFonts.oswald(
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 72,
      fontWeight: FontWeight.w500,
      shadows: textShadows,
    ),
  );

  // Would use .copyWith but it doesn't work properly with GoogleFonts for some reason
  static var titleTextLight = GoogleFonts.oswald(
    textStyle: TextStyle(
      fontWeight: FontWeight.w200,
    ),
  );

  static List<Color> bgColors = <Color>[
    Colors.red[400],
    Colors.redAccent[100],
  ];

  static BoxDecoration bgDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: bgColors,
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
  );

  static List<Shadow> textShadows = [
    Shadow(
      offset: Offset(2, 2),
      blurRadius: 3.0,
      color: Colors.black.withOpacity(0.15),
    ),
    Shadow(
      offset: Offset(2, 2),
      blurRadius: 8.0,
      color: Colors.black.withOpacity(0.15),
    ),
  ];
}
