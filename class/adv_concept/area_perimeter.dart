/*
''' Given the following program that defines some 'shapes', 'circle' and 'square' classes: '''
*/

import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;
  void printValues() {
    print("Area: ${area}");
    print("Perimeter: ${perimeter}");
  }
}

class Square extends Shape {
  final double side;
  Square({required this.side});
  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  final double radius;
  Circle({required this.radius});
  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void main() {
  final shapes = [Square(side: 3), Circle(radius: 4)];
  shapes.forEach((shape) => shape.printValues());

  // final Shape circle = Circle(radius: 3);
  // final Shape square = Square(side: 5);
  // printValues(circle);
  // printValues(square);
  // print(square);
}
