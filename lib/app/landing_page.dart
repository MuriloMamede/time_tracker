import 'package:flutter/material.dart';
import 'package:time_tracker/app/homePage.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';
import 'package:time_tracker/services/auth.dart';

class Landing_page extends StatefulWidget {
  Landing_page({@required this.auth});

  final AuthBase auth;
  @override
  _Landing_pageState createState() => _Landing_pageState();
}

class _Landing_pageState extends State<Landing_page> {

  void initState(){
    super.initState();
    _checkCurrentUser();
  }

  Future<void> _checkCurrentUser() async{
    User user = await widget.auth.currentUser();
    _updateUser(user);
  }



  User _user;
  void _updateUser(User user){
    setState(() {
      _user = user;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    if(_user == null){
      return SignInPage(
        onSignIn: _updateUser,
        auth: widget.auth,
      );
    }
    return HomePage(onSignOut: () => _updateUser(null),
    auth: widget.auth,
    );
    
  }
}