import 'package:flutter/material.dart';
import 'package:neuralve/widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
       
        backgroundColor: Colors.black,
        title: Text('Neuralve',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,

          )
        ),
        actions: <Widget>[
          Icon(Icons.add)
        ]
      ),

      body:Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoginButton(),
          ],
        ),

      )
      
    );

 
  }

}