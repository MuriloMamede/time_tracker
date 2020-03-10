import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    this.child,
    this.color,
    this.borderRadius: 3 ,
    this.onPressed,
    this.height: 50,
  }): assert(borderRadius != null);
  final Widget child;
  final Color color; 
  final double borderRadius;
  final VoidCallback onPressed;
  final double height;
  
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      child: RaisedButton(
        color: color,
        child: child,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius)
            )
          ),
        onPressed: onPressed,
      ), 
    );
  }
}