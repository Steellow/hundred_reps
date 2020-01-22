import 'package:flutter/material.dart';
import 'package:hundred_reps/util/styles.dart';

class WideFloatingButton extends StatefulWidget {
  final Function onPressed;
  final String text;
  final BorderSide borderSide;

  WideFloatingButton({Key key, this.onPressed, this.text, this.borderSide}) : super(key: key);

  @override
  _WideFloatingButtonState createState() => _WideFloatingButtonState();
}

class _WideFloatingButtonState extends State<WideFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      height: 60,
      child: FloatingActionButton.extended(
        // Using FAB.extended instead of ButtonTheme to get those sweet animations between screens. Normally on 1 hero is allowed, but FAB has its unique Hero tag
        onPressed: widget.onPressed,
        label: Container(
          child: Text(
            widget.text,
            style: Styles.doneButtonText,
          ),
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: widget.borderSide,
        ),
      ),
    );
  }
}
