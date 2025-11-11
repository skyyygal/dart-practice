/* Variation 2 – Sorted, Return Actual Numbers
🔹 Array is sorted, return the actual numbers (not indices).
Example:

ini
Copy
Edit
nums = [1, 2, 4, 4]
target = 8
Output = [4, 4]
💡 Key twist: Two pointers, but no index tracking. */

List<int> twoSums(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;

  print("length: ${nums.length}");
  print("rifgt: $right");
  while (left < right) {
    int sum = nums[left] + nums[right];
    print("Sum $sum");
    if (sum == target) {
      return [nums[left], nums[right]];
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }
  return [];
}

void main() {
  var nums = [1, 2, 4, 4];
  int target = 8;
  print(twoSums(nums, target));
}
