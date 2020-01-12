import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ioo_reps/util/styles.dart';

class DescriptionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: AutoSizeText(
        "Challenge: do 100 pushups – one of the best calisthenics exercises! Do the reps in sets of 4–8–12–16–20–16–12–8–4. Rest between the sets as long as needed.",
        textAlign: TextAlign.center,
        style: Styles.descriptionText,
        minFontSize: 22,
      ),
    );
  }
}
