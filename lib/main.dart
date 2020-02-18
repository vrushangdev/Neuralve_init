import 'package:flutter/material.dart';
import 'src/app.dart';
void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: App(),

    )
    );
}