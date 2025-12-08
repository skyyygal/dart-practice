import 'number_parsing.dart';

extension on String {
  //this extension have no same, we can still access it because it's in the same file. What if it's in different file? //Add a name to it and access.
  int? toIntOrNull() => int.tryParse(this);
}

// extension NumberParsing on String {
//   //this extension have no same, we can still access it because it's in the same file. What if it's in different file? //Add a name to it and access.
//   int? toIntOrNull2() => int.tryParse(this);
// }

void main() {
  print("123".toIntOrNull());
  // print("123".toIntOrNull2());
  print(NumberParsing("143").toIntOrNull2());
}
