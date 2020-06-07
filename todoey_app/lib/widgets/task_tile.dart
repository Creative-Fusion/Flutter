import 'package:flutter/material.dart';
// import 'package:todoey_app/screens/task_screens.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longpressCallback;

TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longpressCallback });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback ,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
       trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged:checkboxCallback,
      
       
    ),
    );
  }
}

