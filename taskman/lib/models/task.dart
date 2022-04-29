import 'package:flutter/material.dart';
import 'package:taskman/constants/color.dart';

class task {
  IconData? iconData;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;

  num? left;
  num? done;
  bool isLast;
  task(
      {this.iconData,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.left,
      this.done,
      this.isLast = false});

  static List<task> generateTasks() {
    return [
      task(
        iconData: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kYellowlight,
        iconcolor: kYellowDark,
        btncolor: kYellow,
        left: 3,
        done: 1,
      ),
      task(
        iconData: Icons.cases_rounded,
        title: 'Work',
        bgcolor: kRedlight,
        iconcolor: kRedDark,
        btncolor: kRed,
        left: 0,
        done: 0,
      ),
      task(
        iconData: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kBluelight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 3,
        done: 1,
      ),
      task(isLast: true)
    ];
  }
}
