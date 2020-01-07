import 'package:flutter/material.dart';
import 'package:ioo_reps/util/reps_left_calc.dart';
import 'package:ioo_reps/util/styles.dart';
import 'package:zoomable_tilt_view/zoomable_tilt_view.dart';

class CustomCard extends StatefulWidget {
  final int index;

  CustomCard({Key key, @required this.index}) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    final int reps = repsLeftByIndex(widget.index);

    return ZoomableTiltView(
      zoomLimit: 1,
      child: Container(
        height: 300,
        margin: EdgeInsets.symmetric(vertical: 16), // Without this the Tilt clips on Container on which Swiper is in
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                reps.toString(),
                style: Styles.cardMainText,
              ),
              Text(
                "REPS",
                style: Styles.cardSecondaryText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
