import 'package:flutter/material.dart';
import 'package:job_finder/widgets/custom_pernavbar.dart';
import '../shared/theme.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 72,
        decoration: BoxDecoration(color: cWhite),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ContainNavbar(
              imageUrl: "assets/home.png",
              selector: true,
            ),
            ContainNavbar(
              imageUrl: "assets/bookmarknav.png",
            ),
            ContainNavbar(
              imageUrl: "assets/message.png",
            ),
            ContainNavbar(
              imageUrl: "assets/profile.png",
            ),
          ],
        ),
      ),
    );
  }
}
