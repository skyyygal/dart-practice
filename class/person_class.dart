class Person {
  final String name;
  final int age;
  final double height;
  Person({required this.name, required this.age, required this.height});
  // void printDescription(Person person) {
  //   print(
  //     "My name ${person.name}. I'm ${person.age} years old, I'm ${person.height} meters tall",
  //   );
  // }
  void printDescription() {
    print("My name $name. I'm $age years old, I'm $height meters tall");
  }
}

void main() {
  final person = {'name': 'Andrea', 'age': 36, 'height': 1.84};

  final person1 = Person(name: "Anita", age: 25, height: 1.54);
  final person2 = Person(name: "Shreya", age: 24, height: 1.64);

  //To print description
  person1.printDescription();
  person2.printDescription();

  // print(
  //   "My name ${person.name}. I'm ${person.age} years old, I'm ${person.height} meters tall",
  // );
}

// class is self documenting and checks errors but maps don't. 
// next: const constructors. 