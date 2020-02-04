import 'package:flutter/material.dart';
import 'package:hundred_reps/screens/about_page/about_page.dart';
import 'package:hundred_reps/util/fade_route.dart';

class SettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
          onPressed: () {
            Navigator.push(context, FadeRoute(page: AboutPage()));
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
