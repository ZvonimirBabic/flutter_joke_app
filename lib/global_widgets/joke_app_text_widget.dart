import 'package:flutter/material.dart';

class JokeAppTextWidget extends StatelessWidget {
  const JokeAppTextWidget(
      {required this.text, required this.textStyle, Key? key})
      : super(key: key);

  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
