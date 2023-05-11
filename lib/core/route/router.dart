import 'package:flutter/material.dart';
import 'package:track_your_time/core/route/route_names.dart';
import 'package:track_your_time/01_presentation/task/add_task_screen.dart';

import '../../01_presentation/task/home.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case RouteNames.addTaskPage:
        return MaterialPageRoute(
          builder: (context) => const AddTaskScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
