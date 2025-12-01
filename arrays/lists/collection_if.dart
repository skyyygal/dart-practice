//Collection if - add a value to a collection when condition is true.
void main() {
  final colors = ['grey', 'brown'];
  const addBlue = true;
  const addRed = true;

  if (addBlue) {
    colors.add('Blue');
  }
  if (addRed) {
    colors.add('Red');
  }

  ///Better and understandable approach
  final colors2 = ['grey', 'brown', if (addBlue) 'blue', if (addRed) 'red'];
  print(colors2);
  print(colors);
}
