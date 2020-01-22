import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ioo_reps/util/date_time_helper.dart';
import 'package:ioo_reps/util/shared_prefs.dart';
import 'package:ioo_reps/util/styles.dart';

class ResultsPage extends StatelessWidget {
  final DateTime startTime;
  final DateTime finishTime;
  final Duration bestTime;

  ResultsPage({Key key, this.startTime, this.finishTime, this.bestTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Duration currentTime = finishTime.difference(startTime); // Calculates duration from start and finish times
    String bottomText = "Good job!";

    if ((bestTime != null) && (currentTime.inMilliseconds < bestTime.inMilliseconds)) {
      bottomText = "New record!";
      saveBestTime(currentTime);
      print("New record! saved to SharedPreferences");
    } else if (bestTime == null) {
      saveBestTime(currentTime);
      print("New record! saved to SharedPreferences");
    }

    //! KESKEN JÄI ei toimi jos bestTime on null

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.black26)); // status bar color

    return Scaffold(
      body: Container(
        decoration: Styles.bgDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Your time", style: Styles.cardSecondaryText),
                  Hero(
                    tag: 'timertext',
                    child: Text(
                      printDuration(currentTime), // Returns String with enough zeros
                      style: GoogleFonts.shareTechMono(
                        textStyle: Styles.timerText.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text("Your record", style: Styles.cardSecondaryText),
                  Text(
                    bestTime != null ? printDuration(bestTime) : printDuration(currentTime), // Displays your current time as best time if bestTime is null
                    style: GoogleFonts.shareTechMono(
                      textStyle: Styles.timerText.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Text(bottomText, style: Styles.goodJobText),
            ],
          ),
        ),
      ),
    );
  }
}
