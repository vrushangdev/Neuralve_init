import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';
class TaskListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
    title: Text('task name'),
    subtitle: Text('category name'),
     
 
  );
  }
}

