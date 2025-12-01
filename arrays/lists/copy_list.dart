void main() {
  final list = [1, 2, 3];
  /*  final copy = list;
  copy[1] = 4;
  print(copy);
  print(list); 
  gives o/p: 
  Not actually copying. 
  [1, 4, 3]
  [1, 4, 3]
  */

  final copy = [...list];
  copy[1] = 4;
  print(copy);
  print(list);
  //This approach is best.
}
