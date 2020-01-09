import 'package:flutter/material.dart';

class MyButtonTheme extends StatelessWidget {
  final Widget child;

  MyButtonTheme({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width * 0.65,
      height: 60,
      child: child,
    );
  }
}
