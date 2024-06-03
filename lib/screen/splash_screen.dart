import 'package:co_payment/constant/assets_constant.dart';
import 'package:co_payment/screen/onboard_1_screen.dart';
import 'package:co_payment/theme/pallete.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const OnBoardScreen1()));
        },
        child: Container(
          color: Pallete.greenColor,
          child: Center(
            child: Column(
              children: [
                const Spacer(),
                Image.asset(AssetsConstant.appLogo),
                Image.asset(AssetsConstant.appTitle),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
