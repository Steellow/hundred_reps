import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ioo_reps/screens/main_page/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.orange),
    );
    
    return MaterialApp(
      title: 'Flutter Demo',
      home: MainPage(),
    );
  }
}
