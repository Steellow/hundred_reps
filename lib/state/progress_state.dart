import 'package:flutter/cupertino.dart';
import 'package:ioo_reps/util/progress_helper.dart';

class ProgressState extends ChangeNotifier {
  int _progress = 0;
  int _repsDone = 0;
  final DateTime _startTime = DateTime.now();
  DateTime _finishTime;

  int get progress => _progress;
  int get repsDone => _repsDone;

  DateTime get startTime => _startTime;
  DateTime get finishTime => _finishTime;

  void updateProgress() {
    _repsDone += repsLeftByIndex(_progress);
    _progress += 1;
    print("Total reps done: " + _repsDone.toString());
    notifyListeners();
  }

  void setFinishTime(DateTime dt) {
    _finishTime = dt;
  }
}
