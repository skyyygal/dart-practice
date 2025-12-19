void main() {
  List<int> number = [2, 1, 3];
  for (var i = 0; i < number.length - 1; i++) {
    int minIndex = i;
    for (var j = i + 1; j < number.length - 1; j++) {
      if (number[j] < number[minIndex]) {
        minIndex = j;
      }
    }

    int temp = number[i];
    number[i] = number[minIndex];
    number[minIndex] = temp;
  }
  print(number);
}
