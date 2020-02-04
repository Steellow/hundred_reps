import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hundred_reps/screens/about_page/about_page.dart';
import 'package:hundred_reps/screens/intro_page/description_text.dart';
import 'package:hundred_reps/screens/intro_page/picture.dart';
import 'package:hundred_reps/screens/intro_page/start_button.dart';
import 'package:hundred_reps/screens/intro_page/title_text.dart';
import 'package:hundred_reps/util/fade_route.dart';
import 'package:hundred_reps/util/styles.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.black26));
    return Scaffold(
      body: Container(
        decoration: Styles.bgDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  TitleText(),
                  PushupPicture(),
                ],
              ),
              DescriptionText(),
              Column(children: [
                FlatButton(
                  child: Material(
                    type: MaterialType.transparency,
                color: Colors.transparent,

                    child: Hero(
                      tag: 'about',
                      child: Text("ABOUT", style: Styles.aboutButtonText)
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, FadeRoute(page: AboutPage()));
                  },
                ),
                StartButton(),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
