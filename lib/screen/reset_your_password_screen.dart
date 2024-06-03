import 'package:co_payment/constant/common_widgets/back_btn.dart';
import 'package:co_payment/constant/common_widgets/full_width_my_btn.dart';
import 'package:co_payment/constant/common_widgets/my_text.dart';
import 'package:co_payment/constant/common_widgets/my_text_field.dart';
import 'package:co_payment/constant/common_widgets/title_text.dart';
import 'package:co_payment/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

class ResetYourPasswordScreen extends StatelessWidget {
  const ResetYourPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const BackBtn(),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
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
            const TitleText(text: "Create New Password", textSize: 24),
            const SizedBox(
              height: 20,
            ),
            const MyText(
                text:
                    "Please, enter a new password below\ndifferent from the previous password",
                fontSize: 18),
            const SizedBox(
              height: 80,
            ),
            MyTextFeild(
                name: "Password",
                showPasswordIcon: true,
                isPasswordVisible: false),
            const SizedBox(
              height: 20,
            ),
            MyTextFeild(
                name: "Password",
                showPasswordIcon: true,
                isPasswordVisible: false),
            const Spacer(),
            const MyButton(title: "Create new password", route: SignInScreen()),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
