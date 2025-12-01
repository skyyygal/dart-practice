// void main() {
//   const addBlue = true;
//   const addRed = true;
//   final extraColors = ['yellow', 'green'];

//   final colors = [
//     'grey',
//     'brown',
//     if (addBlue) 'blue',
//     if (addRed) 'red',
//     // extraColors,
//     //Use spread operator to merge the lists
//     ...extraColors,
//   ];

//   print(colors);
// }
void main() {
  List<int> list = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueList = [];

  for (int i = 0; i < list.length; i++) {
    bool isDupe = false;
    print('I: $i');
    print('List:$list');
    print('List i: ${list[i]}');
    for (int j = 0; j < uniqueList.length; j++) {
      print('J: $i');
      print('Uni:$uniqueList');

      print('List J: ${uniqueList[j]}');
      if (list[i] == uniqueList[j]) {
        isDupe = true;
        break;
      }
    }
    if (!isDupe) {
      uniqueList.add(list[i]);
    }
  }
  print("Dupes: $uniqueList"); // Output: [1, 2, 3, 4, 5]
}
