import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ioo_reps/screens/countdown_page/countdown_page.dart';
import 'package:ioo_reps/screens/intro_page/title_text.dart';
import 'package:ioo_reps/screens/main_page/main_page.dart';
import 'package:ioo_reps/screens/shared_widgets/wide_floating_button.dart';
import 'package:ioo_reps/util/fade_route.dart';
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 62),
                    child: Image.asset('assets/images/pushup.png'), // Image is for Wikimedia Commons https://commons.wikimedia.org/wiki/File:Man_Doing_Push_Ups_Cartoon.svg
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: AutoSizeText(
                  "Challenge: do 100 pushups – one of the best calisthenics exercises! Do the reps in sets of 4–8–12–16–20–16–12–8–4. Rest between the sets as long as needed.",
                  textAlign: TextAlign.center,
                  style: Styles.descriptionText,
                  minFontSize: 22,
                ),
              ),
              WideFloatingButton(
                onPressed: () {
                  Navigator.push(context, FadeRoute(page: CountdownPage()));
                },
                text: "START",
                borderSide: BorderSide(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
