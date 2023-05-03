import 'dart:collection';

Set<int> calorieSums = SplayTreeSet<int>((a, b) => b.compareTo(a));
int sum = 0;

Set<int> getHighestCaloriesNumber(String line) {
  if (line.isNotEmpty) {
    sum += int.parse(line);
    return calorieSums;
  }

  calorieSums.add(sum);
  sum = 0;
  return calorieSums;
}
