import 'package:flutter/material.dart';
import 'package:job_finder/pages/main_page.dart';
import '../shared/theme.dart';
import '../widgets/custom_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget circleLine() {
      return Positioned(
        top: -31,
        left: -65,
        child: Container(
          width: 223,
          height: 223,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: cIndigo,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
      );
    }

    Widget bigCircle() {
      return Positioned(
        top: 17,
        right: -121,
        child: Container(
          width: 273,
          height: 273,
          decoration: BoxDecoration(
            color: cIndigo,
            shape: BoxShape.circle,
          ),
          child: Align(
            alignment: Alignment(-2.5, -2),
            child: Container(
              width: 166,
              height: 166,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/circle_line.png",
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget smallCircle() {
      return Positioned(
        top: 298,
        left: 42,
        child: Container(
          width: 77,
          height: 77,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(
              color: cBlue,
              width: 20,
            ),
          ),
        ),
      );
    }

    Widget getStarted() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find the Job You've\nAlways Dreamed of",
              style: blackTextStyle.copyWith(
                  fontSize: 24, fontWeight: medium, height: 1.5),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "One of the places where you will find the right job with your field of interest, and you just have to wait for the manager to call you to hire",
              style: blackTextStyle.copyWith(
                color: cBlack.withOpacity(0.7),
                fontSize: 16,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: 73,
            ),
            CustomButton(
              height: 64,
              name: "Get Started",
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: cWhite,
      body: Stack(
        children: [
          circleLine(),
          bigCircle(),
          smallCircle(),
          getStarted(),
        ],
      ),
    );
  }
}
