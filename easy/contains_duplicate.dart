class Solution {
  bool containsDuplicate(List<int> nums) {
    Set filteredNumbers = {};

    filteredNumbers.addAll(nums);
    return filteredNumbers.length < nums.length;
  }
}
