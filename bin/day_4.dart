import 'dart:io';

import 'package:advent_of_code_2022_dart/day-4/task_1_service.dart';
import 'package:advent_of_code_2022_dart/day-4/task_2_service.dart';

void main() {
  int task1Sum = 0, task2Sum = 0;
  final timer = Stopwatch();
  timer.start();
  File("lib/day-4/input.txt").readAsLinesSync().forEach((line) {
    var splitLine = line.split(RegExp("[-|,]"));
    task1Sum += calculateFullyIntersectingPairs(splitLine);
    task2Sum += calculatePartialOverlap(splitLine);
  });
  print({task1Sum, task2Sum});
  print(timer.elapsedMilliseconds);
  timer.stop();
}
