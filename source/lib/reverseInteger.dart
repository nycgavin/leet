// Given a 32-bit signed integer, reverse digits of an integer.

// Example 1:
// Input: 123
// Output: 321

// Example 2:
// Input: 1234
// Output: 4321


class ReverseInteger {
  ///O(n)
  ///not taking in consideration of the following note:
  ///Note:
  ///Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows
  int reverse(int x) {
    var codeUnits = List<int>();
    codeUnits.addAll( x.toString().codeUnits);
    var loopCount = (codeUnits.length / 2).ceil();
    for (int i = 0; i < loopCount; i++) {
      int temp = codeUnits[i];
      codeUnits[i] = codeUnits[codeUnits.length - (i + 1)];
      codeUnits[codeUnits.length - (i + 1)] = temp;
    }
    var reversedInt = int.parse((String.fromCharCodes(codeUnits)));
    return reversedInt;
  }
}
