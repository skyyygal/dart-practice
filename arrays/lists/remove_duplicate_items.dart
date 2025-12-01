void main() {
  List<int> list = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueList = [];

  /* Solution 1
  for (int i = 0; i < list.length; i++) {
    bool isDupe = false;

    for (int j = 0; j < uniqueList.length; j++) {
      if (list[i] == uniqueList[j]) {
        isDupe = true;
        break;
      }
    }
    if (!isDupe) {
      uniqueList.add(list[i]);
    }
  }*/
  /*
///Solution 2
  for (int item in list) {
    bool exists = false;

    for (int u in uniqueList) {
      if (item == u) {
        exists = true;
        break;
      }
    }

    if (!exists) {
      uniqueList.add(item);
    }
  } */

  /// solution 3
  for (var item in list) {
    // print(item);
    if (!uniqueList.contains(item)) {
      uniqueList.add(item);
      print(uniqueList);
    }
  }

  print("Dupes: $uniqueList"); // Output: [1, 2, 3, 4, 5]
}
// void main() {
//   List<int> list = [1, 2, 2, 3, 4, 4, 5];

//   final uniqueList = list.fold<List<int>>([], (acc, item) {
//     if (!acc.contains(item)) acc.add(item);
//     return acc;
//   });

//   print(uniqueList);
// }
