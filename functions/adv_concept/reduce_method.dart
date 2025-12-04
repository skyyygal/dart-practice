/*""" Reduce method is used to combine all items inside a list and produce a single result
eg: sum of all items in a list"""*/
void main() {
  const list = [1, 2, 3, 4];
  final sum = list.reduce((value, element) => value + element);
  print(sum);
  //Job done in one line code.
  //combine fn is called to add
  //value  : 1 3 6 10
  //element: 2 3 4
}
