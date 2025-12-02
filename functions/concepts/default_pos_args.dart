void main() {
  foo(1, 3);
  foo(1);
  foo2(5, b: 7, c: 8);
}

//Use [] - Optional arguments.
void foo(int a, [int b = 2]) {
  print('a:$a, b:$b');
}

//{} - named args
void foo2(int a, {int b = 2, int c = 4}) {
  print('a:$a, b:$b');
}
