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
  static bool showTrophy;

  ResultsPage({Key key, this.startTime, this.finishTime, this.bestTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Duration currentTime = finishTime.difference(startTime); // Calculates duration from start and finish times
    String bottomText = "Good job!";

    print("bestTime: " + bestTime.toString());
    print("bestTimeMillis: " + bestTime.inMilliseconds.toString());
    print("currentTimeMillis: " + currentTime.inMilliseconds.toString());

    if ((bestTime == null) || (currentTime.inMilliseconds < bestTime.inMilliseconds)) {
      print("ENTERED IF");
      bottomText = "New record!";
      showTrophy = true;
      saveBestTime(currentTime);
      print("New record! saved to SharedPreferences");
    } else {
      showTrophy = false;
    }

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
                  Text(
                    "Your time",
                    style: Styles.cardSecondaryText.copyWith(
                      shadows: Styles.textShadows,
                    ),
                  ),
                  Hero(
                    tag: 'timertext',
                    child: Text(
                      printDuration(currentTime), // Returns String with enough zeros
                      style: GoogleFonts.shareTechMono(
                        textStyle: Styles.timerText.copyWith(
                          color: Colors.white,
                          shadows: Styles.textShadows,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              _drawMiddleWidget(),
              Text(bottomText, style: Styles.goodJobText),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawMiddleWidget() {
    print("_drawMiddleWidget: showTrophy: " + showTrophy.toString());
    if (showTrophy == true) {
      return Text(
        "🏆",
        style: TextStyle(
          fontSize: 100,
          shadows: Styles.textShadows,
        ),
      );
    }
    return Column(
      children: <Widget>[
        Text(
          "Your record",
          style: Styles.cardSecondaryText.copyWith(
            shadows: Styles.textShadows,
          ),
        ),
        Text(
          printDuration(bestTime), // Displays your current time as best time if bestTime is null
          style: GoogleFonts.shareTechMono(
            textStyle: Styles.timerText.copyWith(
              color: Colors.white,
              shadows: Styles.textShadows,
            ),
          ),
        ),
      ],
    );
  }
}
