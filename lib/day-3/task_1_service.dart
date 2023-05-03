import 'dart:collection';

int calculate() {
  return 6 * 7;
}

int _compareRunes(int rune) {
  if (rune <= 90) {
    return rune - 38;
  }

  return rune - 96;
}

void calculateSumOfPriorities(List<String> file) {
  int sum = 0;
  String line;
  for (line in file) {
    sum += _compareRunes(HashSet.from(
            line.codeUnits.sublist(0, line.length ~/ 2))
        .intersection(HashSet.from(line.codeUnits.sublist(line.length ~/ 2)))
        .first);
  }

  print({sum}); // 7597
}
