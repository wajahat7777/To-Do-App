import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ViewModel: TaskProvider
class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title, String description) {
    if (title.isNotEmpty && description.isNotEmpty) {
      _tasks.add(Task(title: title, description: description));
      notifyListeners();
    }
  }

  void toggleTaskStatus(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }
}


// Model: Task
class Task {
  final String title;
  final String description;
  bool isDone;

  Task({
    required this.title,
    required this.description,
    this.isDone = false,
  });
}
