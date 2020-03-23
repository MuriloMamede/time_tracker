import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/email_sign_in_page.dart';
import 'package:time_tracker/app/sign_in/sign_in_button.dart';
import 'package:time_tracker/app/sign_in/social_sign_in_button.dart';
import 'package:time_tracker/services/auth.dart';


class SignInPage extends StatelessWidget {

  SignInPage({@required this.auth});  
  final AuthBase auth;
  

  Future <void> _signInAnonysmously() async{
    try{
     await auth.signInAnonymously();
    } catch(e){
      print(e.toString());
    }
  }

  Future <void> _signInWithGoogle() async{
    try{
     await auth.signInWithGoogle();  
    } catch(e){
      print(e.toString());
    } 
  }

  void _signInWithEmail(BuildContext context){
    Navigator.of(context).push(
     MaterialPageRoute<void>(
       builder: (context) => EmailSignInPage(),
      ) 
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context){
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
              onPressed: _signInWithGoogle,
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
              onPressed: () => _signInWithEmail(context),
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