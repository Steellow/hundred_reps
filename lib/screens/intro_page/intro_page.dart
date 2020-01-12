import 'package:flutter/material.dart';
import 'package:ioo_reps/screens/intro_page/description_text.dart';
import 'package:ioo_reps/screens/intro_page/picture.dart';
import 'package:ioo_reps/screens/intro_page/start_button.dart';
import 'package:ioo_reps/screens/intro_page/title_text.dart';
import 'package:ioo_reps/util/styles.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              StartButton(),
            ],
          ),
        ),
      ),
    );
  }
}
