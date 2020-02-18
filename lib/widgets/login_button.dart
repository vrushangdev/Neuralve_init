
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
RaisedButton LoginButton(){
  _signInWithGoogle(){
    print("object");
  }
  return RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              child: Text('Login With Google'),
              onPressed: (){
                  _signInWithGoogle();
              }
            );
}

