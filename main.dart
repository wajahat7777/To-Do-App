import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food/taskprovider.dart';
import 'package:food/task_input.dart';
import 'package:food/task_list.dart';
import 'package:food/task_screen.dart';

// Main Application Entry
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TaskScreen(),
    );
  }
}
