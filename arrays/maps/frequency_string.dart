void main() {
  List<String> list = ['a', 'b', 'a', 'c', 'b', 'a'];
  Map<String, int> freq = {};

  for (var char in list) {
    if (freq.containsKey(char)) {
      freq[char] = freq[char]! + 1;
    } else {
      freq[char] = 1;
    }
  }

  print(freq);
}
