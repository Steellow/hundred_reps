import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hundred_reps/screens/about_page/about_page.dart';

class SettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topRight,
        child: IconButton(
          onPressed: () {
            // Navigator.push(context, FadeRoute(page: AboutPage()));
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => AboutPage()),
            );
          },
          padding: EdgeInsets.all(12),
          icon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
