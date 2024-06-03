import 'package:flutter/material.dart';

import '../../theme/pallete.dart';

class MyText extends StatelessWidget {
  final String text;
  final double fontSize;
  const MyText({super.key, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.normal,
          color: Pallete.blackColor),
    );
  }
}
