class Strings {
  // static variable
  static String welcome = "welcome";
  static String signIn = "sign in";
  // static methods
  static String greet(String name) => "Hi $name";
  void foo() {
    print(welcome);
  }
}

void main() {
  // final s = Strings();
  // instead of creating instance of class to access the variable.
  // we can make the variable static and access them from class.
  // static variables belongs to the class itself not the instance of the class
  // Use static for variables/methods that are specific to the class.
  // Use static const to define a global constant that belongs to the class
  print(Strings.welcome);
  print(Strings.signIn);
  print(Strings.greet("Anita"));
}
// next: private variable and methods