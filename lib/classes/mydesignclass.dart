import 'package:flutter/material.dart';

class UiDesign extends StatefulWidget {

  @override
  _UiDesignState createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer App"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(

      ),

    );
  }
}

