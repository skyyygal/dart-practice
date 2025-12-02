void main() {
  final personDetail = person(name: 'Anita', age: 25);
  print(personDetail);
}

//use curly braces({})
// 1. Required
String person({required String name, required int age}) {
  return "My name is $name and I'm $age years old";
}

// 2. Default values
String person2({String name = "", int age = 0}) {
  return "My name is $name and I'm $age years old";
}

// 3. Nullable
String person3({String? name, int? age}) {
  return "My name is $name and I'm $age years old";
}
