//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

// Example 1:

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
// Example 2:

// Input: nums = [3,2,4], target = 6
// Output: [1,2]
// Example 3:

// Input: nums = [3,3], target = 6
// Output: [0,1]

// Constraints:

// 2 <= nums.length <= 104
// -109 <= nums[i] <= 109
// -109 <= target <= 109
// Only one valid answer exists.

// Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

//Brute Force Method
class Solution {
  /*  List<int> twoSum(List<int> nums, int target) {
    for (var i = 0; i < nums.length; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return [];
  } */
  /*  //Hashmap
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};
    for (var i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (map.containsKey(complement)) {
        return [map[complement]!, i];
      }
      map[nums[i]] = i;
    }
    return [];
  } */
  //For sorted arrays.

  List<int> twoSum(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;
    while (left < right) {
      int sum = nums[left] + nums[right];

      if (sum == target) {
        return [left, right];
      } else if (sum < target) {
        print("Left: $left");
        left++;
        print(left);
      } else {
        print("Right: $right");
        right--;
        print(right);
      }
    }
    return [];
  }
}

void main() {
  var solution = Solution();
  var nums = [1, 2, 3, 4, 3];
  var target = 6;
  print(solution.twoSum(nums, target));
}
