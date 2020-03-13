import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';

class Landing_page extends StatefulWidget {
  @override
  _Landing_pageState createState() => _Landing_pageState();
}

class _Landing_pageState extends State<Landing_page> {

  FirebaseUser _user;

  @override
  Widget build(BuildContext context) {
    if(_user == null){
      return SignInPage();
    }
    return Container();
    
  }
}