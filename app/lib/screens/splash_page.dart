import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
                width: 220, height: 220, child: Image.asset('assets/img/sample-logo.png'))));
  }
}
