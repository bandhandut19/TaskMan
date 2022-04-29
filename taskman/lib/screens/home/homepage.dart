// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:taskman/screens/home/widgets/goPremium.dart';
import 'package:taskman/screens/home/widgets/tasks.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appbar(),
      // ignore: prefer_const_constructors
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          goPremium(),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Tasks',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: tasks())
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 2,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        // ignore: prefer_const_literals_to_create_immutables
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.lightBlueAccent,
            unselectedItemColor: Colors.blueGrey,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                  label: 'Home', icon: Icon(Icons.home_rounded, size: 30)),
              BottomNavigationBarItem(
                label: 'Person',
                icon: Icon(Icons.person_rounded),
              )
            ]),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            margin: EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/pf2.jpg'),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(width: 10),
          Text(
            'Welcome, Buddy!',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          )
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [Icon(Icons.more_vert, color: Colors.black, size: 40)],
    );
  }
}
