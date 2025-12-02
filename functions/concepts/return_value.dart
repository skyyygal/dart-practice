void main() {
  person("Andrea", 16);
}

String person(String name, int age) {
  return "My name is $name and I'm $age years old";
}

/*
//void means the fuction has not return value.
//Now if you change it to bool, string or any other type.
 Dart expect a return value.
void person(String name, int age) {
  print("My name is $name and I'm $age years old");
}
*/
