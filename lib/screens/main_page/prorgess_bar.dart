import 'package:flutter/material.dart';
import 'package:ioo_reps/state/progress_state.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ProgressBar extends StatefulWidget {
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    final ProgressState progressState = Provider.of<ProgressState>(context); // Easier acces to ProgressState
    
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width,
      percent: progressState.repsDone / 100,
      lineHeight: 10,
      animation: true,
      animateFromLastPercent: true,
      padding: EdgeInsets.zero,
      backgroundColor: Colors.red[100],
      linearGradient: LinearGradient(
        colors: <Color>[
          Colors.red[400],
          Colors.redAccent,
        ],
      ),
      animationDuration: 300,
      linearStrokeCap: LinearStrokeCap.butt,
      clipLinearGradient: false,
    );
  }
}
