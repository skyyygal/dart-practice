// Inheritance/ Subclassing - Extend the functionality of existing class and increases code reuse.
class Animal {
  void sleep() => print('sleep');
  void eat() => print("eat");
  void move() => print("move");
}

class Dog extends Animal {
  void bark() => print("bark");
}

class Cow extends Animal {
  void moo() => print("moo");
}

class CleverDog extends Dog {
  void catchBall() => print("catch");
}

//Animal class is called super class
void main() {
  final animal = Animal();
  animal.sleep();
  final dog = Dog();
  dog.bark();
  dog.sleep();
  final cow = Cow();
  cow.moo();
  cow.sleep();
  final cleverDog = CleverDog();
  //sub classing
  cleverDog.catchBall();
  cleverDog.bark();
  cleverDog.sleep();
}

/*
1. U can use subclassing to model concepts in the real-world
2. Use it to model IS-A relationships. Eg: Dog is a Animal, Cow is a Animal.
In this, dog can do all the things that animal do and dog alone do. Like sleeping, eating, moving, etc. 
But dogs can't do the things that cows do - vice-versa.

''' When and how to use csubclassing? '''
1. Not always easy and subclassing is not always the right solution.
Alternative: Composition. 

next: super constructor. 

*/
