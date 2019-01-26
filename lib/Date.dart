class Date {
  int _day, _month, _year;
  Date() {
    _day = 1;
    _month = 1;
    _year = 1900;
  }

  Date.fromDMY(int d, int m, int y) {
    setDate(d, m, y);
  }

  static List<int> monthWith31Days = [1, 3, 5, 7, 8, 10, 12];

  static bool has31Days(int m) {
    return monthWith31Days.indexOf(m) != -1;
  }

  static bool checkMonth(int m) {
    return (1 <= m && m <= 12);
  }

  static bool checkYear(int y) {
    return (1900 <= y && y <= 9999);
  }

  static bool leapYear(int y) {
    var result = (y % 4 == 0 && y % 100 != 0) || (y % 400 == 0);
    print("Is $y a leap year? $result");
    return result;
  }

  // consider leap year and february
  static bool checkDate(int d, int m, int y) {
    if (!checkYear(y) || !checkMonth(m)) {
      return false;
    }
    if (d < 1 || d > 31) {
      return false;
    }
    if (m == 2) {
      if (leapYear(y)) {
        return (d <= 29);
      }
      return d <= 28;
    }
    if (has31Days(m)) {
      return d <= 31;
    }
    return d <= 30;
  }

  get day {
    return _day;
  }

  get month {
    return _month;
  }

  get year {
    return _year;
  }

  set day(int d) {
    if (checkDate(d, _month, _year)) {
      _day = d;
    }
  }

  set month(int m) {
    if (checkDate(_day, m, _year)) {
      _month = m;
    }
  }

  set year(int y) {
    if (checkDate(_day, _month, y)) {
      _year = y;
    }
  }

  void setDate(int d, int m, int y) {
    if (checkDate(d, m, y)) {
      _day = d;
      _month = m;
      _year = y;
    }
  }

  // void plusYear(int n) {
  //   _year += n * 365;
  // }

  void _plusMonth() {
    if (_month == 12) {
      _month = 1;
      _year++;
      return;
    }
    _month++;
  }

  void plusDay() {
    if (_day == 31) {
      _day = 1;
      _plusMonth();
    }
    if (_day == 30) {
      if (has31Days(_month)) {
        _day++;
        _plusMonth();
        return;
      }
      _day = 1;
      _plusMonth();
      return;
    }
    if (_month == 2) {
      if (_day == 29) {
        _day = 1;
        _plusMonth();
        return;
      }
      if (_day == 28) {
        if (leapYear(_year)) {
          _day++;
          return;
        }
        _day = 1;
        _plusMonth();
      }
    }
    _day++;
  }

  String toString() {
    return "$_day/$_month/$_year";
  }
}

main(List<String> args) {
  var date = Date();
  date.day = 28;
  date.month = 2;
  date.year = 2900;
  date.setDate(29, 2, 2000);
  print(date);
  var date1 = Date.fromDMY(30, 2, 2000);
  print(date1);
}
