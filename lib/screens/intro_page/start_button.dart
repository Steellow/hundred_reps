import 'package:flutter/material.dart';
import 'package:ioo_reps/screens/countdown_page/countdown_page.dart';
import 'package:ioo_reps/screens/shared_widgets/wide_floating_button.dart';
import 'package:ioo_reps/util/fade_route.dart';

class StartButton extends StatefulWidget {
  @override
  _StartButtonState createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  @override
  Widget build(BuildContext context) {
    return WideFloatingButton(
      onPressed: () {
        Navigator.push(context, FadeRoute(page: CountdownPage()));
      },
      text: "START",
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
