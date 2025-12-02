void main() {
  List<int> nums = [0, 1, 0, 3, 12];

  int pos = 0; // position to place next non-zero

  // Move all non-zero numbers forward
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[pos] = nums[i];
      print(" ${nums[pos]} = ${nums[i]}");

      pos++;
      print(nums[i]);
      print(pos);
    }
  }

  // Fill the rest with zeros
  for (int i = pos; i < nums.length; i++) {
    nums[i] = 0;
    print("Filling ${nums[i]}");
  }

  print(nums); // [1, 3, 12, 0, 0]
}
