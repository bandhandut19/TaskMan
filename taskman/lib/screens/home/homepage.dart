// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appbar(),
      // ignore: prefer_const_constructors
      body: Center(
        // ignore: prefer_const_constructors
        child: Text('Home Screen'),
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
