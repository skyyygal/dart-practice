class Animal {
  const Animal({required this.age});
  final int age;
  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  void bark() => print("bark");
}

class Cow extends Animal {
  Cow({required super.age});
  void moo() => print("moo");
}

class CleverDog extends Dog {
  CleverDog({required super.age});
  void catchBall() => print("catch");
}

void main() {
  final animal = Animal(age: 10);
  animal.sleep();
  final dog = Dog(age: 10);
  dog.bark();
  dog.sleep();
  final cow = Cow(age: 10);
  cow.moo();
  cow.sleep();
  final cleverDog = CleverDog(age: 10);
  cleverDog.catchBall();
  cleverDog.bark();
  cleverDog.sleep();
}
// In dart constructors are not implicitly inherited.