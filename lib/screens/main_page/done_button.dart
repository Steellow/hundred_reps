import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ioo_reps/screens/results_page/results_page.dart';
import 'package:ioo_reps/screens/shared_widgets/wide_floating_button.dart';
import 'package:ioo_reps/state/progress_state.dart';
import 'package:ioo_reps/util/fade_route.dart';
import 'package:provider/provider.dart';

class DoneButton extends StatefulWidget {
  final SwiperController sController;

  DoneButton({Key key, this.sController}) : super(key: key);

  @override
  _DoneButtonState createState() => _DoneButtonState();
}

class _DoneButtonState extends State<DoneButton> {
  @override
  Widget build(BuildContext context) {
    final ProgressState progressState = Provider.of<ProgressState>(context);

    return Container(
      margin: EdgeInsets.all(40),
      child: WideFloatingButton(
        onPressed: () {
          progressState.updateProgress(); //* Updating 'progress' before if() statement so .move() method (below) knows where to move
          if (progressState.progress < 9) {
            // Moves the card using SwiperController defined in main_page.dart
            widget.sController.move(progressState.progress); //!Using .move instead of .next, because Swiper hangs if you click "Done" button when its animating with .next method (when user is spamming it)
          } else if (progressState.progress >= 9) {
            // Saving the finish time
            progressState.setFinishTime(DateTime.now());
            // Navigating to new screen
            Navigator.pushReplacement(
              context,
              FadeRoute(
                page: ResultsPage(
                  startTime: progressState.startTime,
                  finishTime: progressState.finishTime,
                ),
              ),
            );
          }
        },
        text: "DONE!",
        borderSide: BorderSide(color: Colors.redAccent),
      ),
    );
  }
}

