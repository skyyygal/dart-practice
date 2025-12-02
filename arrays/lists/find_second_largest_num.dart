void main() {
  List<int> nums = [10, 4, 7, 20, 15];
  int largest = 0;
  int secLargest = 0;
  for (var value in nums) {
    if (value > largest) {
      secLargest = largest;
      largest = value;
    } else if (value > secLargest && value < largest) {
      secLargest = value;
    }
  }

  print('Largest: $largest');
  print('Second Largest: $secLargest');
}
