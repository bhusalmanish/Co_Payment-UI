import 'package:co_payment/theme/pallete.dart';
import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final String btnIcon;
  const IconBtn({super.key, required this.btnIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: Pallete.whiteColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Pallete.grayColor)),
        child: Center(
            child: Image.asset(
          btnIcon,
          height: 80,
          width: 80,
        )),
      ),
    );
  }
}
