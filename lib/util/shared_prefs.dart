import 'package:shared_preferences/shared_preferences.dart';

final String bestTimeKey = 'besttime';

Future<Duration> getBestTime() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    int durationInMilliseconds = prefs.getInt(bestTimeKey);
    return Duration(milliseconds: durationInMilliseconds);
  } catch (e) {
    print(e);
    print("getBestTime(): returning null");
    return null;
  }
}

void saveBestTime(Duration duration) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int durationInMilliseconds = duration.inMilliseconds;
  prefs.setInt(bestTimeKey, durationInMilliseconds);
  print("Saved preference 'besttime': " + durationInMilliseconds.toString());
}

Future<void> deleteBestTime() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove(bestTimeKey);
  print("Best time deleted from shared prefs");
}
