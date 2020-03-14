import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/homePage.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';

class Landing_page extends StatefulWidget {
  @override
  _Landing_pageState createState() => _Landing_pageState();
}

class _Landing_pageState extends State<Landing_page> {

  void initState(){
    super.initState();
    _checkCurrentUser();
  }

  Future<void> _checkCurrentUser() async{
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    _updateUser(user);
  }



  FirebaseUser _user;
  void _updateUser(FirebaseUser user){
    setState(() {
      _user = user;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    if(_user == null){
      return SignInPage(
        onSignIn: _updateUser,
      );
    }
    return HomePage(onSignOut: () => _updateUser(null),
    );
    
  }
}