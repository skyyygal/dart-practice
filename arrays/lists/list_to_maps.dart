void main() {
  List<String> names = ['ram', 'shyam', 'hari'];
  Map<int, String> result = {};

  for (var i = 0; i < names.length; i++) {
    result[i] = names[i];
  }
  print(result);
}
