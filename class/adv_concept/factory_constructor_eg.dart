class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
  factory Person.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];
    if (name is String && age is int) {
      return Person(name: name, age: age);
    }
    throw StateError("Could not read name and age");
  }
  // To json method. Why? => sometimes we want to save our data to remote database and to do that we need to be able to represent our data in JSON format.
  Map<String, Object> toJson() => {'name': name, 'age': age};
}

void main() {
  final person = Person.fromJson({'name': 'Andrea', 'age': 36});
  final json = person.toJson();
  print(json);
}
