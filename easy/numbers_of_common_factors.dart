class Solution {
  int commonFactors(int a, int b) {
    List<int> factors = [];
    int smallerNumber = a < b ? a : b;
    int biggerNumber = a > b ? a : b;

    for (int i = 1; i <= smallerNumber; i++) {
      if (smallerNumber % i == 0 && biggerNumber % i == 0) {
        factors.add(i);
      }
    }

    return factors.length;
  }
}

void main() {
  final sol = Solution();
  print(sol.commonFactors(25, 30));
}
