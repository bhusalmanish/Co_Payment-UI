// ignore: must_be_immutable
import 'package:co_payment/theme/pallete.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextFeild extends StatefulWidget {
  String name;
  bool showPasswordIcon;
  bool isPasswordVisible;

  MyTextFeild(
      {super.key,
      required this.name,
      required this.showPasswordIcon,
      required this.isPasswordVisible});

  @override
  State<MyTextFeild> createState() => _MyTextFeildState();
}

class _MyTextFeildState extends State<MyTextFeild> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: const TextStyle(
            color: Pallete.blueColor,
            fontSize: 18,
            fontWeight: FontWeight.bold),
        focusNode: _focusNode,
        obscureText: !widget.isPasswordVisible,
        decoration: InputDecoration(
          suffixIcon: widget.showPasswordIcon
              ? Padding(
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                    icon: Icon(
                      widget.isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Pallete.grayColor,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.isPasswordVisible = !widget.isPasswordVisible;
                      });
                    },
                  ),
                )
              : null,
          fillColor:
              _focusNode.hasFocus ? Pallete.whiteColor : Pallete.whiteGrayColor,
          filled: true,
          hintText: widget.name,
          hintStyle: const TextStyle(color: Pallete.grayColor),
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
        ));
  }
}
