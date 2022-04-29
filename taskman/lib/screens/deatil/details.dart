// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskman/models/task.dart';

class details extends StatelessWidget {
  final task Task;
  details(this.Task);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      // BACK BUTTON CODE
      expandedHeight: 90,
      backgroundColor: Colors.blueGrey,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        Icon(
          Icons.more_vert,
          size: 40,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${Task.title} tasks',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Add your ${Task.title} tasks here',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
