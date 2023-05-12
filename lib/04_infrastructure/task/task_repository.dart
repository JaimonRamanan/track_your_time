import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:track_your_time/03_domain/task/i_task_repo.dart';
import 'package:track_your_time/03_domain/task/models/task.dart';

@LazySingleton(as: ITaskRepo)
class TaskRepository implements ITaskRepo {
  @override
  Task? addTask({required String taskName, required String description}) {
    log("Add task here", name: "Clicked");
    return Task(
      id: 1,
      title: taskName,
      description: description,
      status: Status.pending,
      dateTime: DateTime.now(),
      duration: Duration.zero,
      estimate: Duration.zero,
    );
  }

  @override
  List<Task>? getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }
}
