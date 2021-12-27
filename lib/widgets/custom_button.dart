import 'package:flutter/material.dart';
import '../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final Function() onPressed;
  CustomButton({
    Key? key,
    required this.name,
    this.width = double.infinity,
    this.height = 64,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: cBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            name,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              cIndigo.withOpacity(0.3),
            ),
          ),
        ),
      ),
    );
  }
}
