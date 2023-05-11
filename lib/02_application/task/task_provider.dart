import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../03_domain/task/models/task.dart';
import 'package:track_your_time/03_domain/task/i_task_repo.dart';

@injectable
class TaskProvider extends ChangeNotifier {
  final ITaskRepo iTaskRepo;
  final List<Task> tasks = <Task>[];

  TaskProvider(this.iTaskRepo);

  void addTask({required Task? task}) {
    iTaskRepo.addTask();
    notifyListeners();
  }
}
