import 'package:flutter/material.dart';
class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Text("SKIP",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
            )
          )
        ],
      ),
      
    );
  }
}