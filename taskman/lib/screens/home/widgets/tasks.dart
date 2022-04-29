// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taskman/models/task.dart';

class tasks extends StatelessWidget {
  final tasksList = task.generateTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      child: GridView.builder(
          itemCount: tasksList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => tasksList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, tasksList[index])),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(25),
      dashPattern: [10, 10],
      color: Colors.grey,
      strokeWidth: 2,
      child: Center(
        child: Text(
          '+ Add Task',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildTask(BuildContext context, task task) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: task.bgcolor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            task.iconData,
            color: task.iconcolor,
            size: 35,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            task.title!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              _buildTaskStatus(
                  task.btncolor!, task.iconcolor!, '${task.left} left'),
              SizedBox(width: 5),
              _buildTaskStatus(
                  Colors.white, task.iconcolor!, '${task.done} done')
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTaskStatus(Color bgcolor, Color txcolor, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(color: txcolor),
      ),
    );
  }
}
