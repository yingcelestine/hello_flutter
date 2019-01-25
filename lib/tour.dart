import "dart:math";

printInteger(int n) {
  print('The number is: $n');
}

hello(String s) {
  print("Hello, $s. How are you?");
}

// double: 64bit floating point number
// float: 32bit floating point number
double gougu(double x, double y) {
  return sqrt(x * x + y * y);
}

printRightTriangle(double x, double y) {
  // double gougu(double x, double y) {
  //   return sqrt(x * x + y * y);
  // }

  print(
      "A right triangle with catheti $x and $y has a hypotenuse of ${gougu(x, y)}");
}

class Square1 {
  final double _side;
  Square1(this._side);
  double area() {
    return this._side * this._side;
  }
}

class Rectangle {
  double _width; // private
  double _height;
  Rectangle(this._width, this._height);
  Rectangle.fromSides(double width, [double height]) {
    this._width = width;
    if (height == null) {
      this._height = width;
    } else {
      this._height = height;
    }
  }
  double area() {
    return this._height * this._width;
  }

  String toString() {
    return "Rectangle(width: ${this._width}, height: ${this._height}, area: ${this.area()})";
  }
}

class Cuboid {
  double _width, _length, _height;
  // double _length;
  // double _height;
  Cuboid(this._width, this._length, this._height);
  Cuboid.fromSides({double width = 1, double length = 1, double height = 1}) {
    this._width = width;
    this._height = height;
    this._length = length;
  }
  Cuboid.fromSides1([double width = 1, double length = 1, double height = 1]) {
    this._width = width;
    this._height = height;
    this._length = length;
  }
  double volume() {
    return this._height * this._width * this._length;
  }

  String toString() {
    return "Cuboid(width: ${this._width}, length: ${this._length}, height: ${this._height}, volume: ${this.volume()})";
  }

  void setWidth(double w) {
    if (w >= 0) {
      this._width = w;
    }
  }

  void setHeight(double h) {
    if (h >= 0) {
      this._height = h;
    }
  }

  void setLength(double len) {
    if (len >= 0) {
      this._length = len;
    }
  }
}

int Function(int) produceAdder(int n) {
  int adder(int x) {
    return x + n;
  }

  return adder;
}

// // Generic class
// class Square<T> {
//   T _side;
//   Square(T side) {
//     this._side = side;
//   }
//   T area() {
//     return this._side * this._side;
//   }
// }

const _nobleGases = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

String makeCoffee({bool withMilk, bool withSugar}) {
  final String milkString =
      ((withMilk != null) && withMilk) ? " with milk" : "";
  final String sugarString =
      ((withSugar != null) && withSugar) ? " and sugar" : "";
  return """Coffee$milkString$sugarString""";
}

main() {
  // type inference
  const number = 42;
  // print out the number
  printInteger(number);
  const double cathetus1 = 3.0;
  const double cathetus2 = 4.0;
  printRightTriangle(cathetus1, cathetus2);
  var name = 'Stan O\'Neal';
  hello(name);
  String xx = "ying";
  assert(xx == "ying");
  if (xx == null) {
    print("xx has no value.");
  } else {
    print(xx);
  }

  const s1 = "abc\n" + "cde\n" + "efg";
  // multiline string
  const s2 = """abc
cde
efg""";
  assert(s1 == s2);
  print(s2);

  const rawString = r"There is no special treatment with \n";
  print(rawString);

  const constList = const [1, 2, 3];
  // constList[0] = 3;
  print(constList);
  var gifts = Map();
  gifts[true] = "partridge";
  gifts[false] = "";
  assert(gifts["nonse"] == null);

  print(gifts);
  print(makeCoffee(withMilk: false, withSugar: false));
  print(makeCoffee(withMilk: false, withSugar: true));
  print(makeCoffee(withMilk: true, withSugar: false));
  print(makeCoffee(withMilk: true, withSugar: true));
  print(makeCoffee());
  print(makeCoffee(withMilk: true));
  print(makeCoffee(withSugar: true));

  final rect1 = Rectangle.fromSides(2, 3);
  print(rect1.toString());
  final rect2 = Rectangle.fromSides(3);
  print(rect2.toString());
  final rect3 = Rectangle(2, 3);
  print(rect3.toString());
  final cuboid1 = Cuboid.fromSides();
  print(cuboid1.toString());
  var cuboid2 = Cuboid.fromSides1();
  cuboid2
    ..setHeight(4)
    ..setLength(5)
    ..setWidth(6);
  print(cuboid2.toString());

  var rectangles = [Rectangle(2, 3), Rectangle(3, 4), Rectangle(4, 5)];
  rectangles
    ..map((r) => r.toString())
    ..forEach(print);

  int Function(int) add3 = produceAdder(3);
  print(add3(57));
}
