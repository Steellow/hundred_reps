import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ioo_reps/state/progress_state.dart';
import 'package:ioo_reps/util/styles.dart';
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
      child: ButtonTheme(
        minWidth: MediaQuery.of(context).size.width * 0.65,
        height: 60,
        child: RaisedButton(
          onPressed: () {
            if (progressState.progress < 8) {
              widget.sController
                  .next(); // Moves the card using SwiperController defined in main_page.dart
            } else if(progressState.progress == 8) {
              progressState.setFinishTime(DateTime.now());
            }
            progressState.updateProgress();
          },
          child: Text(
            "DONE!",
            style: Styles.doneButtonText,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
