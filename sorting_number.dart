void main() {
  List<int> number = [2, 1, 3];
  for (var i = 0; i < number.length - 1; i++) {
    print("i: $i");
    int minIndex = i;
    print("minIndex: $minIndex");
    print("number: ${number[i]}");
    for (var j = i + 1; j < number.length - 1; j++) {
      print("J: $j");
      if (number[j] < number[minIndex]) {
        minIndex = j;
      }
      print("number:${number[j]}");
      print("num[minIndex]: ${number[minIndex]}");
    }

    print("temp = num[i]: ${number[i]}");
    int temp = number[i];
    print("temp = num[minIndex]: ${number[minIndex]}");
    number[i] = number[minIndex];
    print("temp : $temp");
    number[minIndex] = temp;
  }
  print(number);
}
