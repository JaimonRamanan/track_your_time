import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:track_your_time/01_presentation/widgets/text_widget.dart';
import 'package:track_your_time/01_presentation/widgets/button_widget.dart';

import '../../03_domain/task/models/task.dart';
import '../../02_application/task/task_provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(
          fontSize: 18.sp,
          data: "Add Task",
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              data: "Title",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            const TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                ),
              ),
            ),
            ButtonWidget(
              text: "Add",
              onTap: () {
                context.read<TaskProvider>().addTask(taskName: 'First task');
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
