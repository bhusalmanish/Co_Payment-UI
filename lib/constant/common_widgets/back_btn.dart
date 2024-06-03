import 'package:co_payment/theme/pallete.dart';
import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Pallete.grayColor),
          color: Pallete.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            "<",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: Pallete.blueColor),
          ),
        ),
      ),
    );
  }
}
