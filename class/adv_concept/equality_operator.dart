class Point {
  Point(this.x, this.y);
  final double x;
  final double y;
  @override
  String toString() => 'Point($x, $y)';
  @override
  /*
    bool operator ==(Object other) {
    if (other is Point) {
      return x == other.x && y == other.y;
    }
    return false;
  }
  */
  bool operator ==(covariant Point other) {
    return x == other.x && y == other.y;
  }
}

void main() {
  print(Point(1, 1) == Point(1, 1));
  // this prints false directly. So we define a euality operator method.
  // After the equality operator method this prints true and other get object because strings, ints and other data type comes under it.
  ///print(Point(1, 1) == "ABC");
  // prints false.
  // But we shouldn't even ttry to compare points to the strings.
  // Therefore we need to inform darts that this code shouldn't even compile.
  // To do that, we got special keyword called co-variant.
  //  On adding covariant keyword now, the object cand be replaced with points to be more specific.
  // bool operator ==(Object other) -> becomes => bool operator ==(covariant Point other) {
}
