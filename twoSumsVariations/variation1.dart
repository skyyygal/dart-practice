/* Variation 1 – Classic, Multiple Pairs
Problem:
Given an unsorted array, return all pairs of indices whose sum = target.
Example:

nums = [1, 2, 3, 4, 3]
target = 6
Output = [[1, 3], [2, 4]] // index-based */

List<List<int>> allTwoSumsOfPairs(List<int> nums, int target) {
  //BruteForce
  /*  List<List<int>> result = [];
  for (var i = 0; i < nums.length; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        // return [i, j];
        result.add([i, j]);
      }
    }
  }
  return result; */

  //Hashmap
  List<List<int>> result = [];
  Map<int, int> map = {};
  for (var i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (map.containsKey(complement)) {
      result.add([map[complement]!, i]);
    }
    map[nums[i]] = i;
  }
  return result;
}

void main() {
  var nums = [1, 2, 3, 4, 3];
  int target = 6;
  print(allTwoSumsOfPairs(nums, target));
}
