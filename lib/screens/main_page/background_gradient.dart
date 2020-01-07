import 'package:flutter/material.dart';
import 'package:ioo_reps/state/progress_state.dart';
import 'package:ioo_reps/util/progress_helper.dart';
import 'package:provider/provider.dart';

class BackgroundGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProgressState progressState = Provider.of<ProgressState>(context);

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[
          colorByIndex(progressState.progress),
          Colors.white.withOpacity(0.0),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
    );
  }
}
