/* Variation 3 – Count Pairs
🔹 Count the number of unique pairs with sum = target.
Example:

nums = [1, 1, 2, 45, 46, 46]
target = 47
Output = 2 // pairs: (1,46), (2,45)
💡 Key twist: Handle duplicates properly. */

List<List<int>> countPairsOfTwoSums(List<int> nums, int target) {
  List<List<int>> result = [];
  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    int sum = nums[left] + nums[right];
    if (sum == target) {
      result.add([nums[left], nums[right]]);
      int leftValue = nums[left];
      int rightValue = nums[right];

      while (left < right && nums[left] == leftValue) left++;
      while (left < right && nums[right] == rightValue) right--;
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }
  return result;
}

void main() {
  var nums = [1, 1, 2, 45, 46, 46];
  int target = 47;
  print(countPairsOfTwoSums(nums, target));
}
