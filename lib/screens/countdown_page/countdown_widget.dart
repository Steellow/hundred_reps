import 'package:flutter/material.dart';
import 'package:hundred_reps/screens/main_page/main_page.dart';
import 'package:hundred_reps/util/fade_route.dart';
import 'dart:async';

import 'package:hundred_reps/util/styles.dart';

class CountdownWidget extends StatefulWidget {
  @override
  _CountdownWidgetState createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  Timer _timer; // Using Flutter default class Timer for decreasing integer every second
  int _start = 5;

  void _startTimer() {
    const sec = const Duration(seconds: 1);
    _timer = Timer.periodic(sec, (Timer timer) {
      setState(() {
        if (_start < 1) {
          timer.cancel();
          print("Countdown timer finished");

          Navigator.pushReplacement(
            context,
            FadeRoute(page: MainPage()),
          );
        } else {
          _start -= 1;
        }
      });
    });
    print("Countdown timer started");
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _start.toString(),
      style: Styles.cardMainText.copyWith(
        shadows: Styles.textShadows,
      ),
    );
  }
}
