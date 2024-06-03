import "package:co_payment/constant/common_widgets/title_text.dart";
import "package:co_payment/theme/pallete.dart";
import "package:flutter/material.dart";

import "../constant/common_widgets/back_btn.dart";

class CountryResidenceScreen extends StatelessWidget {
  const CountryResidenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            BackBtn(),
            SizedBox(
              height: 30,
            ),
            TitleText(text: "Country of Residence", textSize: 28),
            Text(
                "Please select all the countries that \n you’re a tax recident in"),
            // CountryNameSlector(),
            CountryNameDropDown()
          ],
        ),
      ),
    );
  }
}

class CountryNameDropDown extends StatelessWidget {
  const CountryNameDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Pallete.whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(0, 5)),
          ]),
      // color: Colors.amberAccent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("Nepal"), TitleText(textSize: 24, text: ">")],
      ),
    );
  }
}
