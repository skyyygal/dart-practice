void main() {
  List<int> nums = [4, 5, 1, 2, 0, 4];
  Map<int, int> freq = {};

  for (var n in nums) {
    if (!freq.containsKey(n)) {
      freq[n] = 1;
    } else {
      freq[n] = freq[n]! + 1;
    }
  }

  for (var n in nums) {
    if (freq[n] == 1) {
      print(n);
      break;
    }
  }
}
