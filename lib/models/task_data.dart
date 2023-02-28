import 'dart:collection';

import 'package:flutter/foundation.dart';
import './tasks.dart';

class TaskData extends ChangeNotifier {
  final List<Tasks> _tasks = [
    Tasks(name: 'name'),
    Tasks(name: 'name'),
    Tasks(name: 'name'),
  ];

// getter
  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

// method
  void changeList(String newTaskTitle) {
    
    final task = Tasks(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.toggleIsDone();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
