void main() {
  List<int> list = [1, 8, 5, 4, 2, 6, 10];
  final finalList = filterAndSort(list);
  print(finalList);
}

List<int> filterAndSort(List<int> numbers) {
  List<int> even = [];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      even.add(numbers[i]);
    }
  }
  even.sort((a, b) => b.compareTo(a));
  return even;
}
