void main() {
  const list = [1, 2, 3];
  //for in - Lets write the same method using for-each
  // for (var n in list) {
  //   print(n);
  // }
  // for each.
  list.forEach((n) {
    print(n);
    // use this for complex logic.
    // for in loop is the best choice for this.
  });
  list.forEach((n) => print(n));
  list.forEach(
    print,
  ); // = > this fn works too. To understand this know about classes.
  // in this case dart is implicitly passing the fn arguments.
}
