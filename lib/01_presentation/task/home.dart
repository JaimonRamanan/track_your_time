import 'package:flutter/material.dart';
import 'package:track_your_time/core/route/route_names.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              fontSize: 14.sp,
              data: "Trace your time here!",
            ),
            ButtonWidget(
              text: "Add Task",
              onTap: () {},
            ),
          ],
        ),
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
