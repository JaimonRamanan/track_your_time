import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:track_your_time/core/route/route_names.dart';
import 'package:track_your_time/01_presentation/widgets/constants.dart';
import 'package:track_your_time/02_application/task/task_provider.dart';
import 'package:track_your_time/01_presentation/widgets/text_widget.dart';
import 'package:track_your_time/01_presentation/widgets/button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(
          fontSize: 18.sp,
          color: Colors.white,
          data: "Track Your Time",
          fontWeight: FontWeight.w600,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // TODO
              // List completed tasks here
            },
            icon: const Icon(Icons.history),
          )
        ],
      ),
      body: Consumer<TaskProvider>(
        builder: (BuildContext context, taskProvider, Widget? child) {
          return taskProvider.tasks.isEmpty
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        fontSize: 14.sp,
                        data: "Trace your time here!",
                      ),
                      sizedx20h,
                      ButtonWidget(
                        width: 160.sp,
                        text: "Add Task",
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(15.0),
                  itemCount: taskProvider.tasks.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: TextWidget(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          data: taskProvider.tasks[index].title,
                        ),
                        subtitle: TextWidget(
                          maxLines: 2,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          data: taskProvider.tasks[index].title,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextWidget(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              data:
                                  "${taskProvider.tasks[index].duration.inHours}h ${taskProvider.tasks[index].duration.inMinutes}m ${taskProvider.tasks[index].duration.inSeconds}s",
                            ),
                            sizedx10w,
                            IconButton(
                              onPressed: () {
                                taskProvider.startTimer(index: index);
                              },
                              icon: Icon(
                                taskProvider.tasks[index].isActive
                                    ? Icons.pause_circle_filled_outlined
                                    : Icons.play_circle_filled_outlined,
                                size: 25.sp,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteNames.addTaskPage);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
