int calculatePartialOverlap(List<String> splitLine) {
  int first = int.parse(splitLine.elementAt(0));
  int second = int.parse(splitLine.elementAt(1));
  int third = int.parse(splitLine.elementAt(2));
  int fourth = int.parse(splitLine.elementAt(3));
  if (second < third) {
    return 0;
  }

  if (fourth < first) {
    return 0;
  }
  return 1;
}
