// ## Exercise - Create an extension on 'int' that implements 'rangeTo' method.
// this method should take an 'int other' argument, and use it to return a list containing all the integer value inside the range in increasing order.
// If the other argument is less than the initial value, then the method should return empty list.

extension IntRange on int {
  List<int> rangeTo(int other) {
    final result = <int>[];
    if (other < this) return [];
    for (int i = this; i <= other; i++) {
      result.add(i);
    }
    return result;
  }
}

extension NoSpaces on String {
  String removeSpaces() => replaceAll(' ', '');
}

void main() {
  for (var i in 4.rangeTo(12)) {
    print(i);
  }
  print(("Hello World").removeSpaces());
}
