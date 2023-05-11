import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:track_your_time/01_presentation/task/home.dart';
import 'package:track_your_time/02_application/task/task_provider.dart';

import 'core/utils/theme.dart';
import 'core/route/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TaskProvider>(create: (_) => TaskProvider()),
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            theme: Themes.light,
            home: const HomeScreen(),
            onGenerateRoute: AppRouter.generateRoute,
          );
        },
      ),
    );
  }
}
