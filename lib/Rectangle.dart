class Rectangle {
  double _width;
  double _height;
  Rectangle(this._width, this._height);
  get width {
    return _width;
  }

  set width(double value) {
    if (value >= 0) {
      _width = value;
    }
  }

  get height {
    return _height;
  }

  set height(double n) {
    if (n >= 0) {
      _height = n;
    }
  }

  double area() {
    return _width * _height;
  }

  double circumference() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return "Rectangle(width: $_width, height: $_height, area: ${area()}, circumference: ${circumference()})";
  }
}

main(List<String> args) {
  print("Args: $args");
  if (args.length < 2) {
    print("Too few args.");
    return;
  }
  final double a = double.parse(args[0]);
  final double b = double.parse(args[1]);
  final rectangle = Rectangle(a, b);
  print(rectangle);
}
