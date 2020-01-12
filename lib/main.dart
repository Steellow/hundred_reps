import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ioo_reps/screens/intro_page/intro_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    

    // Blocks the app from running in landscape mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      title: '100REPS',
      home: IntroPage(),
    );
  }
}
