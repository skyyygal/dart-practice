void main() {
  const list = [1, 2, 3];
  list.forEach(print);
  final doubles = list.map((value) => value * 2);
  print(doubles);

  //same method using regular for loop.
  final doubles2 = [];
  for (var value in list) {
    doubles2.add(value * 2);
  }
  // Using map makes this method simple.
}
