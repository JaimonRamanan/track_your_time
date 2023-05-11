import 'package:flutter/material.dart';

import '../../03_domain/task/models/task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> tasks = <Task>[];

  void addTask({required Task task}) {
    notifyListeners();
  }
}
