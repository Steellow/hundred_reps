import 'package:flutter/material.dart';

class PushupPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 62),
      child: Image.asset('assets/images/pushup.png'), // Image is from Wikimedia Commons https://commons.wikimedia.org/wiki/File:Man_Doing_Push_Ups_Cartoon.svg
    );
  }
}
