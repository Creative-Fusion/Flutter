import 'package:todoey_app/models/task.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
 List<Task> _tasks = [
    Task(name: 'Buymilk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy jam'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  } 

int get taskCount{
  return _tasks.length;
}

void updateTask(String title){
final task = Task(name: title??'Demo text');
_tasks.add(task);
notifyListeners();
}
void updateUI(Task task){
 task.toggleDone();
notifyListeners();

}
void deleteTask(Task task){
_tasks.remove(task);
notifyListeners();
}
}