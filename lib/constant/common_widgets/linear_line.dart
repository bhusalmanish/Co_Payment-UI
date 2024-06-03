import 'package:flutter/material.dart';

class LinearLine extends StatelessWidget {
  const LinearLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1,
          width: 160,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.grey,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        const Text(
          "Or",
          style: TextStyle(fontFamily: "Roboto"),
        ),
        Container(
          height: 1, // Line thickness
          width: 160, // Line length
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey, // Start color of the gradient

                Colors.white, // End color of the gradient
              ],
              begin: Alignment.centerLeft, // Start of the gradient
              end: Alignment.centerRight, // End of the gradient
            ),
          ),
        ),
      ],
    );
  }
}
