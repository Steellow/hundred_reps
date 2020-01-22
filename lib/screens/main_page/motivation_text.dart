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
      height: MediaQuery.of(context).size.height * 0.1, // Setting fixed height for this container so rest of the column widgets wont change place if this text length changes to 2 lines
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            getRandomQuote(),
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
