import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ioo_reps/util/styles.dart';

class DoneButton extends StatefulWidget {
  SwiperController sController;

  DoneButton({Key key, this.sController}) : super(key: key);

  @override
  _DoneButtonState createState() => _DoneButtonState();
}

class _DoneButtonState extends State<DoneButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: ButtonTheme(
        minWidth: MediaQuery.of(context).size.width * 0.65,
        height: 60,
        child: RaisedButton(
          onPressed: () {
            widget.sController.next(); // Moves the card using SwiperController defines in main_page.dart
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
