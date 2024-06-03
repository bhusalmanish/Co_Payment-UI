import 'package:co_payment/constant/common_widgets/my_text.dart';
import 'package:co_payment/screen/finger_print_screen.dart';
import 'package:flutter/material.dart';

import '../constant/common_widgets/back_btn.dart';
import '../constant/common_widgets/full_width_my_btn.dart';
import '../constant/common_widgets/num_text_field.dart';
import '../constant/common_widgets/title_text.dart';
import '../theme/pallete.dart';

class OtpAuthScreen extends StatelessWidget {
  const OtpAuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        color: Pallete.whiteColor,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),
          const BackBtn(),
          const SizedBox(
            height: 30,
          ),
          const TitleText(text: "Verify it's you", textSize: 24),
          const SizedBox(
            height: 30,
          ),
          const MyText(
              text:
                  "We send a code to ( *****@mail.com ).\n Enter it here to verify your identity",
              fontSize: 18),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Row(
              children: [
                NumTextField(),
                NumTextField(),
                NumTextField(),
                NumTextField(),
                NumTextField(),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                " Resend Code",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Pallete.greenColor),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Center(
              child: MyButton(
                  title: "Confirm",
                  route: Scaffold(
                    body: FingerPrintScreen(),
                  ))),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
