void main() {
  const list = [1, 2, 3, 4];
  final even = list.where((x) => x % 2 == 0);
  print(even);
  final value = list.firstWhere((x) => x > 3, orElse: () => -1);
  print(value);
}

/*
'''Summary'''
Use where and firstWhere to filter and find items inside a collection. 
they take an anonymous fn that returns a boolean.
*/
