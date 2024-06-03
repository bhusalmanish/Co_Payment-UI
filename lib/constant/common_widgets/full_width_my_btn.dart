import 'package:flutter/material.dart';

import '../../theme/pallete.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Widget route;
  const MyButton({super.key, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        height: 56,
        // width: 287,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Pallete.blueColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Pallete.whiteColor),
          ),
        ),
      ),
    );
  }
}
