import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ioo_reps/screens/shared_widgets/my_button_theme.dart';
import 'package:ioo_reps/util/styles.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("100 REPS", style: Styles.goodJobText),
            // Container(
            //   height: 200,
            //   width: MediaQuery.of(context).size.width * 0.7,
            //   color: Colors.green,
            // ),
            Image.asset('assets/images/pushup.png'),
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
                  //
                },
                child: Text(
                  "START",
                  style: Styles.doneButtonText,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  // side: BorderSide(color: Colors.white),
                ),
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
