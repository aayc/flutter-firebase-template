import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuFlowPage extends StatefulWidget {
  @override
  _MenuFlowPageState createState() => _MenuFlowPageState();
}

class _MenuFlowPageState extends State<MenuFlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 80),
              children: <Widget>[Text('This is where you would have the menu')])),
    );
  }
}
