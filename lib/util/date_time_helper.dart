// Prints duration in HH:MM:SS format (used in timer.dart)
String printDuration(Duration duration) {
  String twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }

  String twoDigitsIfNotZero(int n) { //* Also returns ":"
    if(n == 0) {
      return "";
    }
    return twoDigits(n) + ":";
  }

  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  String twoDigitMilliseconds = twoDigits(duration.inMilliseconds.remainder(60));
  return "${twoDigitsIfNotZero(duration.inHours)}$twoDigitMinutes:$twoDigitSeconds:$twoDigitMilliseconds";
}
