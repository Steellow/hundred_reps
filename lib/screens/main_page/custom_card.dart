import 'package:flutter/material.dart';
import 'package:ioo_reps/util/progress_helper.dart';
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
    final double _borderRadius = 20; // Using custom BorderRadius in both Card and Container, because you can't but gradient to Card, and if you put it to the container it goes on top of round corners

    return ZoomableTiltView(
      // Using ZoomableTiltView for extra juiciness
      zoomLimit: 1,
      child: Container(
        height: 300,
        margin: EdgeInsets.symmetric(vertical: 16), // Without this the Tilt clips on Container on which Swiper is in
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: Styles.bgColors,
                ),
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
      ),
    );
  }
}
