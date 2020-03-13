import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_button.dart';
import 'package:time_tracker/app/sign_in/social_sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignInPage extends StatelessWidget {
  
  Future <void> _signInAnonysmously() async{
    try{
      final authResult = await FirebaseAuth.instance.signInAnonymously();
      print('result: ${authResult.user.uid} ');
    } catch(e){
      print(e.toString());
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2,
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent(){
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600
              ),
              ),
            SizedBox(height: 48,),
            SocialSignInButton(
              text: 'Sign in with Google',
              color: Colors.white,
              onPressed: (){},
              assetName: 'images/google-logo.png',
            ),
            SizedBox(height: 8),
            SocialSignInButton(
              text: 'Sign in with Facebook',
              textColor: Colors.white,
              color: Color(0xFF334D92),
              onPressed: (){},
              assetName: 'images/facebook-logo.png',
            ),
            SizedBox(height: 8),
            SignInButton(
              text: 'Sign in with email',
              textColor: Colors.white,
              color: Colors.teal,
              onPressed: (){},
            ),
            SizedBox(height: 8),
            Text(
              'or',
              style: TextStyle(fontSize: 14, color:Colors.black87),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
             SignInButton(
              text: 'Go anonymous',
              textColor: Colors.black,
              color: Colors.lime[300],
              onPressed: _signInAnonysmously,
            ),
            
          ]
        ),
      ),
    );
  }
}