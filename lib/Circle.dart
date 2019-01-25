const double PI = 3.1415926;

class Circle {
  double _radius;
  Circle(this._radius);
  get radius {
    return _radius;
  }

  set radius(double value) {
    if (value >= 0) {
      _radius = value;
    }
  }

  double area() {
    return PI * _radius * _radius;
  }

  double circumference() {
    return 2 * PI * _radius;
  }

  @override
  String toString() {
    return "Circle(radius: $_radius, area: ${area()}, circumference: ${circumference()})";
  }
}

main(List<String> args) {
  print("Args: $args");
  if (args.length < 1) {
    print("Too few args.");
    return;
  }
  final double r = double.parse(args[0]);
  final circle = Circle(r);
  print(circle);
}
