import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ioo_reps/util/date_time_helper.dart';
import 'package:ioo_reps/util/styles.dart';

class ResultsPage extends StatelessWidget {
  final DateTime startTime;
  final DateTime finishTime;

  ResultsPage({Key key, this.startTime, this.finishTime}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: Container(
        decoration: Styles.bgDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Your time", style: Styles.cardSecondaryText,),
                  Hero(
                    tag: 'timertext',
                    child: Text(
                      printDuration(finishTime.difference(startTime)), // Calculates duration from start and finish times and returns string
                      style: GoogleFonts.shareTechMono(
                        textStyle: Styles.timerText.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Text("Good job!", style: Styles.goodJobText),
            ],
          ),
        ),
      ),
    );
  }
}
