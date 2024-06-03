import 'package:co_payment/screen/opt_auth_screen.dart';
import 'package:co_payment/screen/sign_in_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constant/assets_constant.dart';
import '../constant/common_widgets/back_btn.dart';
import '../constant/common_widgets/full_width_my_btn.dart';
import '../constant/common_widgets/icon_btn.dart';
import '../constant/common_widgets/linear_line.dart';
import '../constant/common_widgets/my_text_field.dart';
import '../constant/common_widgets/title_text.dart';
import '../theme/pallete.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
          const TitleText(
              text: " Create your Co.payment \n Account", textSize: 24),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextFeild(
            name: "Full Name",
            showPasswordIcon: false,
            isPasswordVisible: true,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextFeild(
            name: "Email",
            showPasswordIcon: false,
            isPasswordVisible: true,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextFeild(
            isPasswordVisible: false,
            name: "Password",
            showPasswordIcon: true,
          ),
          const SizedBox(
            height: 20,
          ),

          const Center(
              child: MyButton(
            title: "Sign Up",
            route: OtpAuthScreen(),
          )),
          const SizedBox(
            height: 30,
          ),
          const LinearLine(),
          const SizedBox(
            height: 30,
          ),
          // icon Btn
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconBtn(
                btnIcon: AssetsConstant.googlelogo,
              ),
              IconBtn(
                btnIcon: AssetsConstant.applelogo,
              ),
            ],
          ),
          const SizedBox(
            height: 150,
          ),
          Center(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  const TextSpan(text: "Already have an account?"),
                  TextSpan(
                    text: '  Sign In',
                    style: const TextStyle(
                        color: Pallete.greenColor, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()));
                      },
                    // signup page link..
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
