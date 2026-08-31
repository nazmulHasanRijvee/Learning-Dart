abstract class Shape {
  /// Abstract method
  // ignore: unused_element
  void _area();
}

/// Circle class implementing Shape
class Circle implements Shape {
  /// Property
  double radius;

  /// Constructor
  Circle({required this.radius});

  /// Implement or override abstract area method
  @override
  void _area() {
    double result = 3.1416 * radius * radius;
    print('Circles radius :- $result');
  }

  /// Getter method it doesn't take a parameter
  void get getArea => _area();

  /// Setter method to set the new value of radius
  set setArea(double value) {
    radius = value;
  }
}

void main() {
  /// Creating an instance
  Circle circle1 = Circle(radius: 35);

  // Print area using getter
  circle1.getArea;

  // Update radius using setter
  circle1.setArea = 10;
  circle1.getArea;
}
