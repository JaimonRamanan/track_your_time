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

  Timer? _timer;

  void startTimer({required int index}) {
    int i = -1;
    if (_timer?.isActive ?? false) {
      i = tasks.indexWhere((task) => task.isActive == true);
      _timer?.cancel();
      if (index == i || i != -1) {
        tasks[i] = tasks[i].copyWith(isActive: false);
        notifyListeners();
      }
    }
    if (index != i) {
      getTimer(index: index);
    }
  }

  void getTimer({required int index}) {
    tasks[index] = tasks[index].copyWith(isActive: !tasks[index].isActive);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      Duration duration = tasks[index].duration + const Duration(seconds: 1);
      tasks[index] = tasks[index].copyWith(duration: duration);
      notifyListeners();
    });
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
