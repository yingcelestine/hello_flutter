class Time {
  int _hour, _minute, _second;
  Time() {
    _hour = 0;
    _minute = 0;
    _second = 0;
  }

  Time.fromHMS(int h, int m, int s) {
    setTime(h, m, s);
  }

  static bool checkHour(int h) {
    return (h >= 0 && h <= 23);
  }

  static bool checkMinute(int m) {
    return (m >= 0 && m <= 59);
  }

  static bool checkSecond(int s) {
    return (s >= 0 && s <= 59);
  }

  static bool checkTime(int h, int m, int s) {
    return (checkHour(h) && checkMinute(m) && checkSecond(s));
  }

  get hour {
    return _hour;
  }

  get minute {
    return _minute;
  }

  get second {
    return _second;
  }

  set hour(int h) {
    if (checkHour(h)) {
      _hour = h;
    }
  }

  set minute(int m) {
    if (checkMinute(m)) {
      _minute = m;
    }
  }

  set second(int s) {
    if (checkSecond(s)) {
      _second = s;
    }
  }

  void setTime(int h, int m, int s) {
    if (checkTime(h, m, s)) {
      _hour = h;
      _minute = m;
      _second = s;
    }
  }

  void _nextHour() {
    if (_hour == 23) {
      _hour = 0;
      return;
    }
    _hour++;
  }

  void _nextMinute() {
    if (_minute == 59) {
      _minute = 0;
      _nextHour();
      return;
    }
    minute++;
  }

  void nextSecond() {
    if (_second == 59) {
      _second = 0;
      _nextMinute();
      return;
    }
    _second++;
  }

  void _previousHour() {
    if (_hour == 0) {
      _hour = 23;
      return;
    }
    _hour--;
  }

  void _previousMinute() {
    if (_minute == 0) {
      _minute = 59;
      _previousHour();
      return;
    }
    _minute--;
  }

  void previousSecond() {
    if (_second == 0) {
      _second = 59;
      _previousMinute();
      return;
    }
    _second--;
  }

  String toString() {
    return "$_hour:$_minute:$_second";
  }
}

main(List<String> args) {
  var time = Time();
  time.hour = 3;
  time.minute = 12;
  time.second = 5;
  print(time);
  time.setTime(11, 5, 36);
  print(time);
  var time1 = Time.fromHMS(23, 59, 59);
  print(time1);
  time1.nextSecond();
  print(time1);
  var time2 = Time.fromHMS(0, 0, 0);
  print(time2);
  time2.previousSecond();
  print(time2);
}
