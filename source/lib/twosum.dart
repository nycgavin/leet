import 'dart:collection';

//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//You may assume that each input would have exactly one solution, and you may not use the same element twice.

class TwoSum {
  ///O(n * n)
  List<int> usingIteration(List<int> integers, int target) {
    for (int i = 0; i < integers.length; i++) {
      for (int k = i + 1; k < integers.length; k++) {
        if (integers[i] + integers[k] == target) {
          return [i, k];
        }
      }
    }
  }

  ///O(n)
  List<int> usingHashTable(List<int> integers, int target) {
    HashMap<int, int> map = HashMap<int, int>();

    for (int i = 0; i < integers.length; i++) {
      int addend = target - integers[i];
      if (map.containsKey(addend)) {
        return [map[addend], i];
      }

      map[integers[i]] = i;
    }
  }
}
