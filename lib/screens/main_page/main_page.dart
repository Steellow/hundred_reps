import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ioo_reps/screens/main_page/card_swiper.dart';
import 'package:ioo_reps/screens/main_page/done_button.dart';
import 'package:ioo_reps/screens/main_page/timer.dart';
import 'package:ioo_reps/state/progress_state.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SwiperController sController =
        SwiperController(); // Defining Controller for Swiper here because both CardSwiper() and DoneButton() widgets need it

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ChangeNotifierProvider<ProgressState>.value(
            value: ProgressState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Timer(),
                Text(
                  "I don't know I guess this is a motivational quote",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Column(
                  children: [
                    CardSwiper(sController: sController),
                    DoneButton(sController: sController),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
