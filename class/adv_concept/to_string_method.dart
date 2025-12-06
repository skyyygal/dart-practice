class Point {
  Point(this.x, this.y);
  final double x;
  final double y;
  @override
  String toString() => 'Point($x, $y)';
}

void main() {
  // final point = Point(1, 1);
  // print(point.x);
  /// we can use to_string method to directly print the values
  print(Point(1, 1));

  /// after using toString method, this directly prints the value rather than throwing the instance.
  final list = [Point(1, 1), Point(3, 4)];
  print(list);

  /// this means you can get a human - readable string representation of collection and nested classes as long as you override toString method in your own classes
  /// Perticularly used for model classes representing object of real world.
}
