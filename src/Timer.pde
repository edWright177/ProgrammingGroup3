
class Timer {
  int savedTime;
  int totalTime;
  int passedTime1;


  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }


  void start() {
    savedTime = millis();
  }


  boolean isFinished() {
    int passedTime = millis() - savedTime;
    passedTime1 = passedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}
