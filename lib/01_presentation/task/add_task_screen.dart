import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duration_picker/duration_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:track_your_time/01_presentation/widgets/text_widget.dart';
import 'package:track_your_time/01_presentation/widgets/button_widget.dart';

import '../widgets/constants.dart';
import '../widgets/text_field_widget.dart';
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
            sizedx10h,
            TextFieldWidget(
              label: "Task",
              hint: "Enter task title",
              controller: TextEditingController(),
            ),
            sizedx10h,
            TextFieldWidget(
              label: "Estimate",
              hint: "Enter estimate time",
              onTap: () async {
                Duration? duration = await showDurationPicker(
                  context: context,
                  initialTime: Duration.zero,
                );
                log("$duration", name: "Duration");
              },
              controller: TextEditingController(),
            ),
            sizedx40h,
            ButtonWidget(
              text: "Add",
              onTap: () {
                context.read<TaskProvider>().addTask(taskName: 'First task');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
