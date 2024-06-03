import 'package:co_payment/theme/pallete.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;

  final double textSize;

  const TitleText({super.key, required this.text, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: textSize,
          fontWeight: FontWeight.bold,
          color: Pallete.blueColor),
    );
  }
}
