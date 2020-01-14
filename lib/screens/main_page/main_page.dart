import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ioo_reps/screens/main_page/card_swiper.dart';
import 'package:ioo_reps/screens/main_page/done_button.dart';
import 'package:ioo_reps/screens/main_page/motivation_text.dart';
import 'package:ioo_reps/screens/main_page/prorgess_bar.dart';
import 'package:ioo_reps/screens/main_page/timer.dart';
import 'package:ioo_reps/state/progress_state.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.red[100]));
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.black));

    SwiperController sController = SwiperController(); // Defining Controller for Swiper here because both CardSwiper() and DoneButton() widgets need it

    return Scaffold(
      body: ChangeNotifierProvider<ProgressState>.value(
        value: ProgressState(),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(children: [
                  ProgressBar(),
                  Timer(),
                ]),
                MotivationText(),
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
