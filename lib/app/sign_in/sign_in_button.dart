import 'package:flutter/material.dart';
import 'package:time_tracker/commom_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
    
  }) :super(
        child: Text(
                text, 
                style: TextStyle(
                  color: textColor, 
                  fontSize: 15
                ),
              ),
        color: color,
        borderRadius: 4,
        onPressed: onPressed,
      );
}