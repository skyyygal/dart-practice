import 'dart:math';

abstract class Shapes {
  double get area;
  const Shapes();

  factory Shapes.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError("invalid or missing side property");
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError("invalid or missing radius property");
      default:
        throw UnsupportedError("shape $type not recognized");
    }
  }
}

class Square extends Shapes {
  const Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shapes {
  const Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shapes shape) {
  print(shape.area);
}

void main() {
  final shapesJson = [
    {'type': 'square', 'side': 10.0},
    {'type': 'circle', 'radius': 5.0},
    // {'type': 'triangle', 'radius': 5.0}, //checking error
  ];
  final shapes = shapesJson.map((shapeJson) => Shapes.fromJson(shapeJson));
  shapes.forEach(printArea);
}















// Common use us Factory constructor - parsing JSON data
// Previously already covered - default and named constructors, and static methods
/*
Use in 2 scenarios. 
1. Implement a constructor that doesn't always create a new instant of it's class.
2. Initialize a final variavle using logic that can't be handled in the initializer list.
3. Good eg: Is parsing the data that comes from the network in JSON format.

Client                                 Server
=============                         ==========================
|           |  Get(shapes)            {                          }
| ****      | --------------------->  ==========================
|           | <--------------------   {                          } 
=============      JSON               ===========================

JSON 
{
'type':'square',
'side':10.0
},
{
'type':'circle',
'radius':5.0
}


abstract class Shape{}            
class Square extends Shape{...}
class Circle extends Shape{...}

*/ 


