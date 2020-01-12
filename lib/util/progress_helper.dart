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
