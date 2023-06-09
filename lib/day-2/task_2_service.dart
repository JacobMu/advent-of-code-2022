import 'dart:collection';

HashMap<String, int> scoreMap = HashMap.from({
  "A X": 3,
  "A Y": 4,
  "A Z": 8,
  "B X": 1,
  "B Y": 5,
  "B Z": 9,
  "C X": 2,
  "C Y": 6,
  "C Z": 7
});

int getCalculatedScore(String line) {
  return scoreMap[line]!;
}
