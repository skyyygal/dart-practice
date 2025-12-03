void main() {
  ({name = 'Anit'}) => "Hi $name";
  // Let rep fn args and right rep fn body.
  (String name) => "Hi $name";
  //So the fn doesn't have name, how can we call it?
  // Step 1: Assign it to a variable.
  final sayHi = (name) => "Hi $name";
  print(sayHi);
  //O/p: Closure: ({dynamic name}) => String
  print(sayHi('Anita'));
}
