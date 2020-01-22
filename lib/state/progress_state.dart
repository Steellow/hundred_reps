import 'package:flutter/cupertino.dart';
import 'package:ioo_reps/util/progress_helper.dart';
import 'package:ioo_reps/util/shared_prefs.dart';

class ProgressState extends ChangeNotifier {
  int _progress = 0;
  int _repsDone = 0;
  final DateTime _startTime = DateTime.now();
  DateTime _finishTime;
  Duration _bestTime;

  int get progress => _progress;
  int get repsDone => _repsDone;

  DateTime get startTime => _startTime;
  DateTime get finishTime => _finishTime;

  Duration get bestTime => _bestTime;

  void updateProgress() {
    _repsDone += repsLeftByIndex(_progress);
    _progress += 1;
    print("Total reps done: " + _repsDone.toString());
    notifyListeners();
  }

  void setFinishTime(DateTime dt) {
    _finishTime = dt;
  }

  void preLoadBestTime() async {
    // Loading bestTime to state before showing results screen, so we don't need to waste time then
    _bestTime = await getBestTime();
  }
}
