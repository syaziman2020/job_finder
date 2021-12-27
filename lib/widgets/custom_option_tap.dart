import 'package:flutter/material.dart';
import '../shared/theme.dart';

class OptionTap extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;
  final double widthImg;
  final double heightImg;

  const OptionTap(
      {Key? key,
      this.width = 32,
      this.height = 32,
      required this.imageUrl,
      this.widthImg = 24,
      this.heightImg = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Container(
          width: widthImg,
          height: heightImg,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
