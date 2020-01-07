import 'package:flutter/material.dart';

int repsLeftByIndex(int index) {
  if (index == 0 || index == 8) {
    return 4;
  } else if (index == 1 || index == 7) {
    return 8;
  } else if (index == 2 || index == 6) {
    return 12;
  } else if (index == 3 || index == 5) {
    return 16;
  } else if (index == 4) {
    return 20;
  } else {
    return 0; // FOR DEBUG PURPOSES
  }
}

// Color colorByIndex(int index) {
//   if(index == 0) {
//     return Colors.red;
//   } else if (index < 3) {
//     return Colors.orange;
//   } else if(index < 5) {
//     return Colors.yellow;
//   } else if (index < 7) {
//     return Colors.lightGreen;
//   } else {
//     return Colors.green;
//   }
// }

Color colorByIndex(int index) {
  // Colors generated using ColorBlender
  switch (index) {
    case 0:
      return Colors.red;
      break;
    case 1:
      return Color(0xffF76D37);
      break;
    case 2:
      return Color(0xffFA9739);
      break;
    case 3:
      return Color(0xffFCC13A);
      break;
    case 4:
      return Color(0xffFFEB3B);
      break;
    case 5:
      return Color(0xffDBDF3F);
      break;
    case 6:
      return Color(0xffB7D343);
      break;
    case 7:
      return Color(0xff94C748);
      break;
    case 8:
      return Color(0xff70BB4C);
      break;
    default:
      return Colors.green;
      break;
  }
}

