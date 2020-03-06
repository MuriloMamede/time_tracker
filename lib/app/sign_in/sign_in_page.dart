import 'package:flutter/material.dart';
import 'package:time_tracker/commom_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
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
            SizedBox(
              height: 8,
            ),
            CustomRaisedButton(
              text: 'Sign in with Google',
              color: Colors.white,
              borderRadius: 4,
              onPressed: (){},
            ),
            SizedBox(height: 8),
            CustomRaisedButton(
              text: 'Sign in with Facebook',
              textColor: Colors.white,
              color: Colors.blue,
              borderRadius: 4,
              onPressed: (){},
            ),
          ]
        ),
      ),
    );
  }
}