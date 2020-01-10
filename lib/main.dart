import 'package:flutter/material.dart';
import 'package:ioo_reps/screens/intro_page/intro_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.black));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      title: '100REPS',
      // home: MainPage(),
      home: IntroPage(),
    );
  }
}
