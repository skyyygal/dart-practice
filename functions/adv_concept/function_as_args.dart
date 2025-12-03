void main() {
  final sayHi = (name) => "Hi $name";
  // print(sayHi('Anita'));
  welcome(sayHi, 'Anita');
}

void welcome(String Function(String) greet, String name) {
  print(greet(name));
  print("Welcome to this course");
}
