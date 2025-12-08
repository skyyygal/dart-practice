//Generic for variables in int and double
extension IterableX<T extends num> on Iterable<T> {
  // if you omit the base class "T extends num" The dart will take it as oject that supports any type. Which is not valid in this case.
  T sum() => reduce((value, element) => (value + element) as T);
  //tip:  num interable() => fold(0, (value, element) => value + element);
  //Why fold is better than reduce?
  // reduce crashes on empty lists.
  // fold lets you provide a starting value (0).
}

void main() {
  final list = [1, 2, 3].sum();
  final list2 = [1.0, 2.0, 3.0].sum();
  print('$list, $list2');
}
