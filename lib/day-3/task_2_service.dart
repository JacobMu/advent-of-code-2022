int _compareRunes(int rune) {
  if (rune <= 90) {
    return rune - 38;
  }

  return rune - 96;
}

void calculateCommonItem(List<String> file) {
  int sum = 0;
  int boundary = file.length - 1;
  Set<int> set;

  for (var index = 0; index <= boundary; index += 3) {
    set = file.elementAt(index).runes.toSet();
    if (index + 1 < file.length) {
      set = set.intersection(file.elementAt(index + 1).runes.toSet());
    }

    if (index + 2 < file.length) {
      set = set.intersection(file.elementAt(index + 2).runes.toSet());
    }
    sum += _compareRunes(set.first);
  }
  print({sum});
}
