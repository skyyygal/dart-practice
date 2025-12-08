mixin Mixin1 {
  int foo = 1;
}
mixin Mixin2 {
  int foo = 2;
}

class Foo with Mixin1, Mixin2 {
  void printFoo() {
    print(foo);
  }
}

void main() {
  final foo = Foo();
  foo.printFoo(); //Prints: 2
  //  name collisions with mixins can be hard to spot them un big projects and compiler might not warn. as this case.
}
