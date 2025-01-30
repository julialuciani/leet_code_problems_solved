void main() {
  final sol = Solution();

  print(sol.isAnagram('aacc', 'ccac'));
}

class Solution {
  bool isAnagram(String s, String t) {
    final splitS = s.split('');
    final splitT = t.split('');

    final List<String> thirdList = splitS + splitT;
    final Set thirdSet = thirdList.toSet();
    final Map<String, dynamic> thirdMap = {};

    if (splitT.length != splitS.length) return false;

    for (String letter in thirdList) {
      int letterCount = 0;
      for (int i = 0; i < thirdList.length; i++) {
        if (letter == thirdList[i]) {
          letterCount++;
        }
      }
      thirdMap.addAll({letter: letterCount});
    }

    print(thirdMap);

    for (String letter in thirdSet) {
      if (thirdMap[letter] % 2 == 0) {
        return true;
      }
    }

    return false;
  }
}

//Tranform the two string in a list and verify if they contain the lenght
// If they don't return false
// Else verify if they  have the same count of the same letters
// If so this is an anagram