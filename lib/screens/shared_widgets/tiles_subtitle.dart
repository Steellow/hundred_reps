import 'package:flutter/material.dart';

// Used in About page
class TilesSubtitle extends StatelessWidget {
  final String text;

  TilesSubtitle({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}
