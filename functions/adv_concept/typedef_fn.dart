typedef Greet = String Function(String);
//shorter version
// typedef String Greet(String greet);

String sayHello(String name) => "Hello $name";
String sayBonjour(String name) => "Bonjour $name";
String sayHola(String name) => "Hola $name";
// When you need certain funtion more than once, then use it as a function type : Greet greet
// and if you just need it once, u don't need this
void main() {
  final sayHi = (name) => "Hi $name";
  welcome(sayHi, 'Anita');
  welcome(sayBonjour, 'Anita');
  welcome(sayHola, 'Anita');
}

void welcome(Greet greet, String name) {
  print(greet(name));
  print("Welcome to this course");
}
