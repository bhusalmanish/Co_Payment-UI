import 'package:co_payment/constant/assets_constant.dart';
import 'package:co_payment/constant/common_widgets/full_width_my_btn.dart';
import 'package:co_payment/constant/common_widgets/my_text.dart';
import 'package:co_payment/constant/common_widgets/my_text_field.dart';
import 'package:co_payment/constant/common_widgets/title_text.dart';
import 'package:flutter/material.dart';

import '../verify_your_identity_screen.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(AssetsConstant.lock),
              const SizedBox(
                height: 30,
              ),
              const TitleText(text: "Passsword Recovery", textSize: 24),
              const SizedBox(
                height: 30,
              ),
              const MyText(
                  text:
                      "Enter your registered email below to receive password instructions",
                  fontSize: 18),
              const SizedBox(
                height: 40,
              ),
              MyTextFeild(
                  name: "email@gmail.com",
                  showPasswordIcon: true,
                  isPasswordVisible: false),
              const SizedBox(
                height: 100,
              ),
              const MyButton(
                  title: "Send me email", route: VerifyYourIdentityScreen()),
              const Spacer(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
