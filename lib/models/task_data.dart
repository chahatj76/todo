import 'dart:collection';

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy Milk'),
    Task(title: 'Buy Sugar'),
    Task(title: 'Complete Ds'),
  ];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(
      title: newTaskTitle,
    );
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
