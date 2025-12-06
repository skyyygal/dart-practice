import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  final double side;
  Square(this.side);
  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;
  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final square = Square(10);
  final circle = Circle(20);
  print("Circle: ${circle.area}, Square: ${square.area}");
  printArea(square);
  // List of shapes
  final shapes = [Square(2), Circle(3)];
  shapes.forEach((printArea));
  // Both are same
  shapes.forEach((shape) => printArea(shape));
}
/* 
1. We can use abstract class to defina an interface that can be used/implemented by subclasses
2. very powerful: decouples code that uses an interface from it's implementation
3. In this eg: printArea doesn't need to know that Square and Circle exist, It only needs a shape argument with area property.
4. We're using dependency inversion principle. 
- Code with abstraction, to be independent from specific implementation.
(often) a good idea to code against abstract interfaces vs concrete implementations
*/