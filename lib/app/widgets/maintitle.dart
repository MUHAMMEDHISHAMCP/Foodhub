import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color = Colors.black,
    this.weight = FontWeight.w200,
  }) : super(key: key);
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight  weight;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style:  TextStyle(
      //  fontFamily: 'MainFont',
        fontSize: fontSize,
        color: color,
        fontWeight: weight,
      ),
      textAlign: TextAlign.center,
    );
  }
}