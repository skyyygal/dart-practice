abstract class InterfaceA {
  void a();
  // void c();
}

abstract class InterfaceB {
  void b();
}

class AB implements InterfaceA, InterfaceB {
  @override
  void a() {}

  @override
  void b() {}

  // @override
  // void c() {}
}

abstract class Base {
  void
  foo(); //methods that don't have implementation is called : abstract method.
  void bar() => print("bar");
  // void bar() {}
}

class Subclass extends Base {
  // Dart complaints on implementing Base foo() method. But not bar.
  // Here we require to implement the method that's not implemented.
  // by @override method we can implement the method with a body
  @override
  void foo() => print("foo");
}

/*
 _________________________________________________________
| keyword  | type   | abstract methods | concrete methods |
|__________|________|__________________|__________________|
| extends  |single  | must override    |   can override   |
|__________|________|__________________|__________________|
|implements|multiple| must override    |   must override  |
|__________|________|__________________|__________________|


                                    (interface)
Concrete                             Abstract
  <--------------------------------------->

-class is not abstract            -class is abstract
-all methods are implemented      -all method are abstract
class A{                          abstract class Logger{   
void foo()=>print('foo');         void log();
}                                 }
final a = A();                   final logger = Logger(); //can't do this.
a.foo();


*/
