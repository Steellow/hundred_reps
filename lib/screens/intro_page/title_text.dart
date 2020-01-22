import 'package:flutter/material.dart';
import 'package:hundred_reps/util/styles.dart';

class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      // Using RichText to get part of the text bold
      text: TextSpan(
        text: "100",
        style: Styles.titleText,
        children: <TextSpan>[
          TextSpan(
            text: " REPS",
            style: Styles.titleTextLight,
          ),
        ],
      ),
    );
  }
}
