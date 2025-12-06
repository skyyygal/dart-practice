// ## Exercise: Implement the + and * operators
// Given the following program:

class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;
  @override
  @override
  String toString() => 'Point($x, $y)';
  @override
  bool operator ==(covariant Point other) {
    return x == other.x && y == other.y;
  }

  Point operator +(covariant Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x * other, y * other);
  }
}

void main() {
  print(Point(1, 1) + Point(2, 0));
  print(Point(2, 1) * 5);
}

// Note: you can use equatable package to override props variable, override stringify and return true
// use quatable only on immutable objects. All values must be final.
