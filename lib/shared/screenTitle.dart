import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 900),
      builder: (BuildContext context, double opacity, Widget child) {
        return Opacity(
          opacity: opacity,
          child: Padding(
            padding: EdgeInsets.only(top: (opacity * 20.0)),
            child: child,
          ),
        );
      },
      child: Text(
        text,
        style: TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
