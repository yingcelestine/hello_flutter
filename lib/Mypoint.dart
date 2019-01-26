import "dart:math";

class Mypoint {
  int _x = 0, _y = 0;
  Mypoint(this._x, this._y);
  static List<int> xY = [];
  static bool checkX(int x) {
    return x >= 0;
  }

  static bool checkY(int y) {
    return y >= 0;
  }

  static bool checkXY(int x, int y) {
    return (checkX(x) && checkY(y));
  }

  get x {
    return _x;
  }

  get y {
    return _y;
  }

  get valueOfXY {
    return [_x, _y];
  }

  set x(int x) {
    if (checkX(x)) {
      this.x = x;
    }
  }

  set y(int y) {
    if (checkY(y)) {
      this._y = y;
    }
  }

  void setXY(int x, int y) {
    if (checkXY(x, y)) {
      _x = x;
      _y = y;
    }
  }

  double distance(int x, int y) {
    var dx = x - _x;
    var dy = y - _y;
    return sqrt(dx * dx + dy * dy);
  }

  double anotherDistance(Mypoint another) {
    var s = sqrt((another.x - _x) * (another.x - _x) +
        (another.y - _y) * (another.y - _y));
    return s;
  }

  double distanceFromOrigin() {
    var s = sqrt(_x * _x + _y * _y);
    return s;
  }

  String toString() {
    return "My point is ($_x, $_y)";
  }
}

main(List<String> args) {
  var mypoint = Mypoint(3, 4);
  print(mypoint);
  mypoint.setXY(5, 6);
  print(mypoint);
  var s = mypoint.distance(3, 7);
  print(s);
  var s1 = mypoint.distanceFromOrigin();
  print(s1);
  var s2 = mypoint.anotherDistance(Mypoint(3, 7));
  print(s2);
}
