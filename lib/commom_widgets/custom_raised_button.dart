import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    this.child,
    this.color,
    this.borderRadius,
    this.onPressed,
    this.text,
    this.textColor: Colors.black87,
  });
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;
  final Color textColor;
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return  RaisedButton(
      color: color,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 15,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius)
          )
        ),
      onPressed: onPressed,
    );
  }
}