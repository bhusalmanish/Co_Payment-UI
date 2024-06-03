import 'package:co_payment/constant/common_widgets/full_width_my_btn.dart';
import 'package:co_payment/screen/reset_your_password_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constant/assets_constant.dart';
import '../constant/common_widgets/title_text.dart';
import '../theme/theme.dart';

class VerifyYourIdentityScreen extends StatelessWidget {
  const VerifyYourIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(AssetsConstant.verify),
            const SizedBox(
              height: 30,
            ),
            const TitleText(text: "Verify your identity", textSize: 24),
            const SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  const TextSpan(text: " Where would you like"),
                  TextSpan(
                    text: ' Co.payment',
                    style: const TextStyle(
                        color: Pallete.greenColor, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    // signup page link..
                  ),
                  const TextSpan(text: " to send your security code? "),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // const MyEmailContainer(),
            const MyCustomeTextfeild(),
            const Spacer(),
            const MyButton(title: "Continue", route: ResetYourPasswordScreen()),

            const SizedBox(
              height: 140,
            )
          ]),
        ),
      ),
    );
  }
}

class MyCustomeTextfeild extends StatelessWidget {
  const MyCustomeTextfeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.check_circle,
          color: Pallete.greenColor,
        ),
        suffixIcon: Icon(
          Icons.mail,
          color: Pallete.grayColor,
        ),
        // label: Text(
        //   "Email",
        //   style:
        //       TextStyle(color: Pallete.blueColor, fontWeight: FontWeight.bold),
        // ),

        fillColor: Pallete.whiteGrayColor,
        filled: true,
        hintText: "T***@gmail.com",
        hintStyle: TextStyle(color: Pallete.grayColor),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: const BorderSide(
        //     color: Colors.black,
        //     width: 2,
        //   ),
      ),
      // : OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(10),
      //     borderSide: BorderSide.none,
      //   ),
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(10),
      //   borderSide: const BorderSide(
      //     color: Colors.black,
      //     width: 2,
      //
    );
  }
}
