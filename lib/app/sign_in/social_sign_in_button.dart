import 'package:flutter/material.dart';
import 'package:time_tracker/commom_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
    @required String assetName,
  }) :
      assert(assetName != null),
      assert(text != null),
      super(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(assetName),
            Text(
              text, 
              style: TextStyle(
                color: textColor, 
                fontSize: 15
              ),
            ),
            Opacity(
              child: Image.asset(assetName),
              opacity: 0,
            ),
          ],       
        ),
        color: color,
        borderRadius: 4,
        onPressed: onPressed,
      );
}