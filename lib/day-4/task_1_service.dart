int calculateFullyIntersectingPairs(List<String> splitLine) {
  int first = int.parse(splitLine.elementAt(0));
  int second = int.parse(splitLine.elementAt(1));
  int third = int.parse(splitLine.elementAt(2));
  int fourth = int.parse(splitLine.elementAt(3));
  if (third <= first && second <= fourth) {
    return 1;
  }

  if (third >= first && second >= fourth) {
    return 1;
  }
  return 0;
}
