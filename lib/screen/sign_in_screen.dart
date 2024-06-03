import 'package:co_payment/constant/assets_constant.dart';
import 'package:co_payment/constant/common_widgets/my_text.dart';
import 'package:co_payment/constant/common_widgets/title_text.dart';
import 'package:co_payment/screen/company_residence_screen.dart';
import 'package:co_payment/screen/opt_auth_screen.dart';
import 'package:co_payment/screen/singup_screen.dart';
import 'package:co_payment/theme/pallete.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constant/common_widgets/back_btn.dart';
import '../constant/common_widgets/full_width_my_btn.dart';
import '../constant/common_widgets/icon_btn.dart';
import '../constant/common_widgets/linear_line.dart';
import '../constant/common_widgets/my_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
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
          const TitleText(text: "Hi There!👋", textSize: 24),
          const SizedBox(
            height: 30,
          ),
          const MyText(
              text: "Welcome back, Sign in to your account", fontSize: 18),

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
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OtpAuthScreen()));
              // builder: (context) => const CountryResidenceScreen()));
            },
            child: const Text(
              " Forgot Password ?",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Pallete.greenColor),
            ),
          ),

          const Center(
              child: MyButton(
            title: "Sign In",
            route: CountryResidenceScreen(),
            // route: CountryNameSelector(),
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
                  const TextSpan(text: "Don't have an account?"),
                  TextSpan(
                    text: ' Sign Up',
                    style: const TextStyle(
                        color: Pallete.greenColor, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
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
