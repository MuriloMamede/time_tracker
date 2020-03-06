import 'package:flutter/material.dart';
import 'package:time_tracker/commom_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
    String image,
  }) :super(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(image),
            Text(
              text, 
              style: TextStyle(
                color: textColor, 
                fontSize: 15
              ),
            ),
            Opacity(
              child: Image.asset(image),
              opacity: 0,
            ),
          ],       
        ),
        color: color,
        borderRadius: 4,
        onPressed: onPressed,
      );
}