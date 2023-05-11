import 'package:track_your_time/03_domain/task/models/task.dart';

abstract class ITaskRepo {
  List<Task>? getTasks();
  Task? addTask();
}
