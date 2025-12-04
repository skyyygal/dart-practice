void main() {
  const list = [1, 2, 3, 4];
  final findNumber = firstWhere(list, (x) => x == 5, orElse: () => -1);
  print(findNumber);
}

T firstWhere<T>(
  List<T> items,
  bool Function(T) f, {
  required T Function() orElse,
}) {
  for (var item in items) {
    if (f(item)) {
      item;
    }
  }
  return orElse();
}
//next: reduce method