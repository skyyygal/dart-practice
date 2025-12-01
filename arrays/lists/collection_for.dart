void main() {
  final colors = ['grey', 'brown'];
  const addBlue = true;
  const addRed = true;
  final extraColors = ['yellow', 'green'];

  // final colors2 = ['grey', 'brown', if (addBlue) 'blue', if (addRed) 'red'];
  final colors2 = [
    'grey',
    'brown',
    if (addBlue) 'blue',
    if (addRed) 'red',
    //another approach
    for (var color in extraColors) color,
  ];
  //One Approach
  // colors.addAll(extraColors);
  print(colors2);
  // print(colors);
}
