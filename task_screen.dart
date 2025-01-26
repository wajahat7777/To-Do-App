import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food/taskprovider.dart';
import 'package:food/task_input.dart';
import 'package:food/task_list.dart';



// Task Screen
class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900], // Dark blue background
      appBar: AppBar(
        title: const Text('To-Do App'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        children: [
          const Expanded(
            child: TaskList(),
          ),
          const TaskInput(),
        ],
      ),
    );
  }
}
