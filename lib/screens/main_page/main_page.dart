import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ioo_reps/screens/main_page/background_gradient.dart';
import 'package:ioo_reps/screens/main_page/card_swiper.dart';
import 'package:ioo_reps/screens/main_page/done_button.dart';
import 'package:ioo_reps/screens/main_page/prorgess_bar.dart';
import 'package:ioo_reps/screens/main_page/timer.dart';
import 'package:ioo_reps/state/progress_state.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SwiperController sController =
        SwiperController(); // Defining Controller for Swiper here because both CardSwiper() and DoneButton() widgets need it

    return Scaffold(
      backgroundColor: Colors.white,
      body: ChangeNotifierProvider<ProgressState>.value(
        value: ProgressState(),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    ProgressBar(),
                    Timer(),
                  ]
                ),
                Text(
                  "I don't know I guess this is a motivational quote",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
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
