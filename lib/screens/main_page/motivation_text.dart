import 'package:flutter/material.dart';
import 'package:ioo_reps/util/random_motivation.dart';
import 'package:provider/provider.dart';

import '../../state/progress_state.dart';

class MotivationText extends StatefulWidget {
  @override
  _MotivationTextState createState() => _MotivationTextState();
}

class _MotivationTextState extends State<MotivationText> {
  

  @override
  Widget build(BuildContext context) {
    Provider.of<ProgressState>(context); // Mentioning provider here so this widget listens to "NotifyListeners" of progress_state
    
    return Container(
      margin: EdgeInsets.all(28),
      child: Text(
        getRandomQuote(),
        style: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.black87,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
