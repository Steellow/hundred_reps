import 'package:flutter/material.dart';
import 'package:ioo_reps/util/styles.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.orange,
            Colors.white.withOpacity(0.0),
          ]
        )
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 24),
          child: Text("07:41:74", style: Styles.timerText,)
        )
      ),
    );
  }
}