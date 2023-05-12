import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../03_domain/task/models/task.dart';
import 'package:track_your_time/03_domain/task/i_task_repo.dart';

@injectable
class TaskProvider extends ChangeNotifier {
  final ITaskRepo iTaskRepo;
  final List<Task> tasks = <Task>[];

  TaskProvider(this.iTaskRepo);

  late Timer _timer;

  void startTimer({required int index}) {
    tasks[index] = tasks[index].copyWith(isActive: !tasks[index].isActive);
    notifyListeners();
    if (tasks[index].isActive) {
      _timer.cancel();

      notifyListeners();
    } else {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        Duration duration = tasks[index].duration + const Duration(seconds: 1);
        tasks[index] = tasks[index].copyWith(duration: duration);
        notifyListeners();
      });
    }
  }

  void addTask({required String taskName, required String description}) {
    Task? task =
        iTaskRepo.addTask(taskName: taskName, description: description);
    if (task != null) {
      log("$task", name: "task is");
      tasks.insert(0, task);
    }
    notifyListeners();
  }
}
