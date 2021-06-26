

import 'package:flutter/material.dart';
import 'package:flutter_navigation_drawer/classes/MyAppBar.dart';
import 'package:flutter_navigation_drawer/classes/NavBar.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Drawer App")),
        backgroundColor: Colors.green,
      ),
      drawer: NavBar(),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),


    );
  }
}
