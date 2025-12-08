mixin Swimming {
  void swim() => print("Swimming");
}
mixin Breathing {
  void breathe() => print('breathing');
}

class Animal with Breathing {
  // void breathe() => print('breathing');
}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}

void main() {
  final fish = Fish();
  fish.swim();
  fish.breathe();
  final human = Human();
  human.swim();
}

/* class Animal {
  void breathe() => print('breathing');
}

class Fish extends Animal {
  void swim() => print("Swimming");
}

class Human extends Animal {
  void swim() => print("Swimming");
  // swim method is repeated twice, code duplication.
  // We can't move it to animal class cuz not all animals swim.
  // So we create mixin with swimming, to inherit.
  class hierarchy is same, but Fish and Human can now swim. 
  We can use mixins to share functionality in multiple classes without code duplication.
  Mixins are good for defining behaviors (or capabilities)
  classes can inherit those behaviors in a more maintainable way.
  mixins(with) lead to shallow class hierarchies(a good thing).
  single inheritance(extends) leads to deep class hierarchies (making the code harder to maintain)
  In Dart, any classes can be added as a mixin to another class(using the with keyword.) //this is not working 
  Mixinx can't be instantiated. eg: final swimming = Swimming();
  Swimming or breathing is a verb that represent an action, when we create classes we use nouns. 

  ***Drawbacks of Mixins***
  1. Mixins can't have constructors.
  2. Mixins can lead to name collisions. Same name collision in different mixins. 

  Eg: mixin drawbacks. 
  } 

*/
