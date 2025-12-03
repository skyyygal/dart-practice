// Iterable is a collection of element that can be accessed sequentially

void main() {
  const list = [1, 2, 3];
  list.forEach(print);
  final doubles = list.map((value) => value * 2);
  print(doubles);

  final List<int> double2 = list.map((value) => value * 2).toList();
  print(double2);
  // (2,4,6) - all the interable appear in paranthesis - lists and sets are iterables.
}
// Lazy Iterable - The anonymous function is not evaluated until the result is used.
//  final doubles = list.map((value) => value * 2); - this is not iterated until the value is printed or it's needed 
//  print(doubles); - (results Performance optimization.)
