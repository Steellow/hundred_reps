import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ioo_reps/util/styles.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class DoneButton extends StatefulWidget {
  final SwiperController sController;

  DoneButton({Key key, this.sController}) : super(key: key);

  @override
  _DoneButtonState createState() => _DoneButtonState();
}

// class _DoneButtonState extends State<DoneButton> {
//   double progress = 0.4;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.65,
//       height: 60,
//       margin: EdgeInsets.all(40),
      
//       child: InkWell(
//         onTap: () {
//           widget.sController
//               .next(); // Moves the card using SwiperController defines in main_page.dart
//           setState(() {
//             progress += 0.2;
//           });
//         },
//         child: LiquidLinearProgressIndicator(
//           value: progress,
//           valueColor: AlwaysStoppedAnimation(Colors.redAccent),
//           backgroundColor: Colors.red[100],
//           borderRadius: 30,
//           direction: Axis.horizontal,
//           center: Text("DONE!", style: Styles.doneButtonText),
//         ),
//       ),
//     );
//   }
// }

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
            widget.sController.next(); // Moves the card using SwiperController defined in main_page.dart
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
