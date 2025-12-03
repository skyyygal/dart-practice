void main() {
  const list = [1, 2, 3];
  const list2 = [1.0, 2.0, 3.0];
  final doubles = transform<int, int>(list, (x) => x * 2);
  //<int, int > denotes input and return
  final rounded = transform<double, int>(list2, (x) => x.round());
  print(doubles);
  print(rounded);
}

List<R> transform<T, R>(List<T> items, R Function(T) f) {
  var result = <R>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}
