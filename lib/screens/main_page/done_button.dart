import 'package:flutter/material.dart';
import 'package:ioo_reps/util/styles.dart';

class DoneButton extends StatefulWidget {
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
          onPressed: () {},
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
