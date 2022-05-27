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
  boolean finished() {
    int passedTime = millis() - savedTime;
    passedTime1 = passedTime;
    return(passedTime>totalTime)?true:false;
  }
}
