import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ioo_reps/state/progress_state.dart';
import 'package:ioo_reps/util/date_time_helper.dart';
import 'package:ioo_reps/util/styles.dart';
import 'package:provider/provider.dart';
import 'package:timer_builder/timer_builder.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    final ProgressState progressState = Provider.of<ProgressState>(context); // Easier acces to ProgressState

    return Container(
      margin: EdgeInsets.only(top: 6),
      child: TimerBuilder.periodic(
        Duration(milliseconds: 50), // ? What's good interval here?
        builder: (context) {
          Duration difference;
          if (progressState.progress <= 8) {
            final DateTime now = DateTime.now();
            difference = now.difference(progressState.startTime);
          } else {
            // If user has finished it displays finish time, otherwise starttime compared to current time
            difference = progressState.finishTime.difference(progressState.startTime);
          }
          return Hero(
            tag: 'timertext',
            child: Text(
              printDuration(difference),
              style: GoogleFonts.shareTechMono(textStyle: Styles.timerText),
            ),
          );
        },
      ),
    );
  }
}
