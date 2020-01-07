import 'package:flutter/material.dart';
import 'package:ioo_reps/screens/main_page/card_swiper.dart';
import 'package:ioo_reps/screens/main_page/done_button.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              CardSwiper(),
              DoneButton(),
            ],
          ),
        ),
      ),
    );
  }
}
