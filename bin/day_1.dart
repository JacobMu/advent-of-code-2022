import 'dart:io';

import 'package:advent_of_code_2022_dart/day-1/task_1_service.dart';

void main() {
  final stopwatch = Stopwatch();
  stopwatch.start();
  var list = File("lib/day-1/input.txt").readAsLinesSync().toList();
  int index;
  Set<int> sumTask1 = {};

  for (index = 0; index < list.length; index++) {
    sumTask1 = getHighestCaloriesNumber(list[index]);
  }

  stopwatch.stop();
  print({
    sumTask1.first,
    sumTask1.elementAt(0) + sumTask1.elementAt(1) + sumTask1.elementAt(2),
    stopwatch.elapsedMilliseconds
  });
}
