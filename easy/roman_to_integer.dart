class Solution {
  int romanToInt(String s) {
    // final List<String> romanSymbols = ["I", "V", "X", "L", "C", "D", "M"];
    final Map<String, int> romanSymbolsValues = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };

    List<String> inputSymbols = s.split('');
    final inputReversed = inputSymbols.reversed;
    int value = 0;
    int lastNumber = 0;

    for (String symbol in inputReversed) {
      int currentNumber = romanSymbolsValues[symbol]!;

      if (currentNumber < lastNumber) {
        value -= currentNumber;
      } else {
        value += currentNumber;
      }
      lastNumber = currentNumber;
    }
    return value;
  }
}

void main(List<String> args) {
  final Solution sol = Solution();
  print(sol.romanToInt("MCMXCIV"));
}
