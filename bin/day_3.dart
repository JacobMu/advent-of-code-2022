import 'dart:io';

import 'package:advent_of_code_2022_dart/day-3/task_1_service.dart';
import 'package:advent_of_code_2022_dart/day-3/task_2_service.dart';

void main() {
  final timer = Stopwatch();
  timer.start();
  List<String> file = File("lib/day-3/input.txt").readAsLinesSync();
  calculateSumOfPriorities(file);
  calculateCommonItem(file);
  print(timer.elapsedMilliseconds);
  timer.stop();
}
