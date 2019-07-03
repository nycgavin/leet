import 'package:source/twosum.dart';
import 'package:test/test.dart';

//pub run test test/test.dart --pause-after-load

void main() {
  group("TwoSum", () {
    var array;
    setUp(() {
      array = [1, 2, 3, 5, 10];
    });

    test('two sum problem min edge case', () {
      expect(TwoSum().usingIteration(array, 3), [0, 1]);
    });
    test('two sum problem max edge case', () {
      expect(TwoSum().usingIteration(array, 15), [3, 4]);
    });

    test('two sum problem skip case', () {
      expect(TwoSum().usingIteration(array, 7), [1, 3]);
    });
  });
}
