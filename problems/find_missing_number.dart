void main() {
  List<int> list = [1, 2, 4, 5, 6];
  final missing = findMissingNumber(list);
  print(missing);
}

int findMissingNumber(List<int> list) {
  int sum = 0;
  int missingNumber = 0;
  int n = 0;
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
    n = list.length + 1;
  }
  int totalNum = n * (n + 1) ~/ 2;
  missingNumber = totalNum - sum;
  return missingNumber;
}
