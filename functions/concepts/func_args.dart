void main() {
  const name = 'Anita';
  const age = 36;
  print("My name is $name and I'm $age years old");
  const name2 = 'Anita';
  const age2 = 36;
  print("My name is $name2 and I'm $age2 years old");

  //Avoid code Duplication
  person("Andrea", 16);
  person(name2, age);
}
//Fuction help us write more maintainable code.
// Change the way a function behaves without changing how we call it.

void person(String name, int age) {
  print("My name is $name and I'm $age years old");
}
