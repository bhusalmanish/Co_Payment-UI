import 'package:co_payment/constant/assets_constant.dart';
import 'package:co_payment/constant/common_widgets/full_width_my_btn.dart';
import 'package:co_payment/constant/common_widgets/my_text.dart';
import 'package:co_payment/constant/common_widgets/title_text.dart';
import 'package:flutter/material.dart';

import '../constant/common_widgets/back_btn.dart';
import '../theme/pallete.dart';
import 'onboard_screen/password_recovery_screen.dart';

class FingerPrintScreen extends StatelessWidget {
  const FingerPrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        color: Pallete.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const BackBtn(),
            const SizedBox(
              height: 40,
            ),
            const Center(
                child:
                    TitleText(text: "Enable biometric Access", textSize: 25)),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: MyText(
                  text:
                      "Login quickly and securely with the\n fingerprint stored on this device",
                  fontSize: 18),
            ),
            const SizedBox(
              height: 120,
            ),
            Center(child: Image.asset(AssetsConstant.fingerprint)),
            const Spacer(),
            const MyButton(
              title: "Enable biometric access",
              route: PasswordRecoveryScreen(),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PasswordRecoveryScreen()));
              },
              child: const Center(
                child: Text(
                  "I’ll do this later",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Pallete.greenColor),
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
