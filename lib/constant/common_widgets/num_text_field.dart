import 'package:flutter/material.dart';

import '../../theme/pallete.dart';

class NumTextField extends StatefulWidget {
  const NumTextField({super.key});
  @override
  State<NumTextField> createState() => _NUMTextFieldState();
}

class _NUMTextFieldState extends State<NumTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.amber,
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        height: 70,
        width: 70,
        child: TextField(
          showCursor: false,
          enableInteractiveSelection: false,
          // clipBehavior: Clip.none,
          textAlign: TextAlign.center, // This centers the input text
          style: const TextStyle(
              color: Pallete.blueColor,
              fontSize: 30,
              fontWeight: FontWeight.bold),
          focusNode: _focusNode,
          decoration: InputDecoration(
            filled: true,
            fillColor: _focusNode.hasFocus
                ? Pallete.whiteColor
                : Pallete.whiteGrayColor,
            border: _focusNode.hasFocus
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
