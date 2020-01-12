import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ioo_reps/screens/intro_page/title_text.dart';
import 'package:ioo_reps/screens/main_page/main_page.dart';
import 'package:ioo_reps/screens/shared_widgets/wide_floating_button.dart';
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
                  "Challenge to do 100 pushups, one of the best calisthenics excercises. You will do the pushups in sets of 4-8-12-16-20-16-12-8-4. You can rest as long as you need.",
                  textAlign: TextAlign.center,
                  style: Styles.descriptionText,
                  minFontSize: 22,
                ),
              ),
              WideFloatingButton(
                onPressed: () {
                  Navigator.push(context, FadeRoute(page: MainPage()));
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

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
