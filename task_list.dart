import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food/taskprovider.dart';
import 'package:food/task_input.dart';



// Task List
class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = context.watch<TaskProvider>().tasks;

    return tasks.isEmpty
        ? const Center(
            child: Text(
              'No tasks added yet!',
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.only(bottom: 10),
                elevation: 3,
                child: ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: task.isDone ? Colors.green[700] : Colors.black,
                      decoration:
                          task.isDone ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  subtitle: Text(
                    task.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: task.isDone ? Colors.green[400] : Colors.black54,
                      decoration:
                          task.isDone ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.check_circle,
                      color: task.isDone ? Colors.green : Colors.grey,
                    ),
                    onPressed: () {
                      context.read<TaskProvider>().toggleTaskStatus(index);
                    },
                  ),
                ),
              );
            },
          );
  }
}
