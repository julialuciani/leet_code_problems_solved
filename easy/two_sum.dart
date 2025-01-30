class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int x = i + 1; x < nums.length; x++) {
        if (nums[i] + nums[x] == target) {
          return [i, x];
        }
      }
    }

    return [];
  }
}

void main() {
  final sol = Solution();

  print(sol.twoSum([2, 7, 11, 15], 9));
}
