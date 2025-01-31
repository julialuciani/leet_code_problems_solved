class Solution {
  bool isPalindrome(int x) {
    return (x >= 0) && int.parse(x.toString().split('').reversed.join()) == x;
  }
}

void main() {
  final sol = Solution();
  print(sol.isPalindrome(0));
}
