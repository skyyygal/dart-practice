void main() {
  const addBlue = true;
  const addRed = true;
  final extraColors = ['yellow', 'green'];

  final colors = [
    'grey',
    'brown',
    if (addBlue) 'blue',
    if (addRed) 'red',
    // extraColors,
    //Use spread operator to merge the lists
    ...extraColors,
  ];

  print(colors);
}
