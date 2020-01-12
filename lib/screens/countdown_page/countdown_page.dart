import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ioo_reps/util/styles.dart';

import 'countdown_widget.dart';

class CountdownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.black26));
    return Scaffold(
      body: Container(
        decoration: Styles.bgDecoration,
        child: Center(
          child: CountdownWidget(),
        ),
      ),
    );
  }
}