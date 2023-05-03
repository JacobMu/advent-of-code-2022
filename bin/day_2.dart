import 'dart:io';

import 'package:advent_of_code_2022_dart/day-2/task_1_service.dart';
import 'package:advent_of_code_2022_dart/day-2/task_2_service.dart';

void main() {
  int sumTask1 = 0, sumTask2 = 0;
  final timer = Stopwatch();
  timer.start();
  File("lib/day-2/input.txt").readAsLinesSync().forEach((line) {
    sumTask1 += getTotalScore(line);
    sumTask2 += getCalculatedScore(line);
  });

  print(timer.elapsedMilliseconds);
  print({sumTask1, sumTask2});
  timer.stop();
}
