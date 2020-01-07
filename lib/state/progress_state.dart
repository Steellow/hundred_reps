import 'package:flutter/cupertino.dart';

class ProgressState extends ChangeNotifier {
  int _progress = 0;
  final DateTime _startTime = DateTime.now();
  DateTime _finishTime;

  int get progress => _progress;

  DateTime get startTime => _startTime;
  DateTime get finishTime => _finishTime;


  void updateProgress() {
    _progress += 1;
    notifyListeners();
  }

  void setFinishTime(DateTime dt) {
    _finishTime = dt;
  }
}