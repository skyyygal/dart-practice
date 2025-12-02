void main() {
  const a = 10;
  print(a);
  if (a > 5) {
    const b = 5;
    print(b);
    print(a);
    //print a is allowed inside this scope
  }
  // both are local scope - defined inside curly braces{}
  // print b valid here.
}
// We use global scope which is basically defined outside the main function. 
// We use Global scope to declare variables, functions, enums and other types