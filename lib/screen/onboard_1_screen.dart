import 'package:co_payment/constant/assets_constant.dart';
import 'package:co_payment/screen/sign_in_screen.dart';
import 'package:co_payment/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constant/common_widgets/full_width_my_btn.dart';

class OnBoardScreen1 extends StatefulWidget {
  const OnBoardScreen1({super.key});

  @override
  State<OnBoardScreen1> createState() => _OnBoardScreen1State();
}

class _OnBoardScreen1State extends State<OnBoardScreen1> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Pallete.whiteColor,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Row(children: [
                  Spacer(),
                  Text(
                    "Skip",
                    style: TextStyle(
                        color: Pallete.blueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  )
                ]),
                const SizedBox(
                  height: 110,
                ),
                Expanded(
                  child: PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: const [Onboard1(), Onboard2()],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: const ExpandingDotsEffect(
                      dotWidth: 16,
                      dotHeight: 10,
                      activeDotColor: Pallete.blueColor,
                      dotColor: Pallete.whiteGrayColor),
                ),
                const SizedBox(
                  height: 40,
                ),
                const MyButton(
                  title: "Get Started",
                  route: SignInScreen(),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            )),
      ),
    );
  }
}

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Pallete.whiteColor,
        color: Pallete.whiteColor,
        // height: 300,
        child: Stack(
          children: [
            Image.asset(
              AssetsConstant.onboard1,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
            const Positioned(
              top: 250,
              left: 40,
              child: Text(
                "Finance app the safest\n  and most trusted",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Pallete.blueColor),
              ),
            ),
            const Positioned(
              top: 340,
              left: 60,
              child: Text(
                "Your finance work starts here. Our here to help you \n track and deal with speeding up your transactions.",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ));
  }
}

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Pallete.whiteColor,
        color: Pallete.whiteColor,
        // height: 300,
        child: Stack(
          children: [
            Image.asset(
              AssetsConstant.onboard2,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: 310,
              child: Container(
                height: 400,
                width: 800,
                color: Colors.white,
              ),
            ),
            const Positioned(
              top: 315,
              left: 40,
              child: Text(
                "The fastest transaction\n    process only here",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Pallete.blueColor),
              ),
            ),
            const Positioned(
              top: 400,
              left: 60,
              child: Text(
                "Get easy to pay all your bills with just a few steps. \n Paying your bills become fast and efficient.",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ));
  }
}
