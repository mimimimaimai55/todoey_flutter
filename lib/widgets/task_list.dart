import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: '卵を買う'),
    Task(name: 'ミルクを買う'),
    Task(name: 'パンを買う'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback:(checkboxState){
          setState((){
            tasks[index].toggleDone();
          });
        }
      );
    },
      itemCount: tasks.length,
    );
  }
}
