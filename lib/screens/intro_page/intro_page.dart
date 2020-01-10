import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ioo_reps/screens/intro_page/title_text.dart';
import 'package:ioo_reps/screens/main_page/main_page.dart';
import 'package:ioo_reps/screens/shared_widgets/my_button_theme.dart';
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
              TitleText(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 62),
                child: Image.asset('assets/images/pushup.png'), // Image is for Wikimedia Commons https://commons.wikimedia.org/wiki/File:Man_Doing_Push_Ups_Cartoon.svg
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: AutoSizeText(
                  "Challenge to do 100 pushups, one of the best calisthenics excercises. You will do the pushups in sets of 4-8-12-16-20-16-12-8-4. You can rest as long as you need.",
                  textAlign: TextAlign.center,
                  style: Styles.descriptionText,
                  minFontSize: 18,
                ),
              ),
              MyButtonTheme(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ),
                    );
                  },
                  child: Text(
                    "START",
                    style: Styles.doneButtonText,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
