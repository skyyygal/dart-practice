void main() {
  const multiplier = 10;
  const list = ['1,2,3'];
  final result = list.map((x) => x * multiplier);
  //multiplier belongs to the parent scope
  // When an anonymous fn use variables that are defined in the parent scope are termed as closure.
  print(result);
}
