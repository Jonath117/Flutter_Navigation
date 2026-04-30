import 'package:flutter/material.dart';
import 'package:flutter_app_navigations/screens/home_screen.dart';
import 'package:flutter_app_navigations/screens/task_detail_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path: (context) => HomeScreen(),
        TaskDetailScreen.path: (context) => TaskDetailScreen(),
      },
    );
  }
}
