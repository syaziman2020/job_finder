import 'package:flutter/material.dart';
import '../shared/theme.dart';

class ContainNavbar extends StatelessWidget {
  final bool selector;
  final String imageUrl;
  const ContainNavbar({Key? key, this.selector = false, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 24,
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 24,
                height: 3,
                decoration: BoxDecoration(
                  color: (selector) ? cBlue : Colors.transparent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
