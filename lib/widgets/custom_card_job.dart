import 'package:flutter/material.dart';
import '../shared/theme.dart';

class CustomCard extends StatelessWidget {
  final String price;
  final Color color;
  final String imageUrl;
  final String job;
  final String place;
  final Function() onTap;
  final bool gesture;
  const CustomCard({
    Key? key,
    required this.price,
    required this.color,
    required this.imageUrl,
    required this.job,
    required this.place,
    required this.onTap,
    this.gesture = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        width: 252,
        height: 148,
        margin: EdgeInsets.only(left: 24),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imageUrl,
                      ),
                    ),
                  ),
                ),
                Text(
                  price,
                  style: (gesture)
                      ? whiteTextStyle.copyWith(
                          fontWeight: medium,
                        )
                      : blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              job,
              style: (gesture)
                  ? whiteTextStyle.copyWith(
                      fontWeight: medium,
                    )
                  : blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              place,
              style: (gesture)
                  ? whiteTextStyle.copyWith(
                      fontSize: 12, color: Color(0xffFEFEFE))
                  : blackTextStyle.copyWith(
                      fontSize: 12,
                      color: cBlack.withOpacity(0.7),
                    ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 22,
                  padding: EdgeInsets.symmetric(horizontal: 9),
                  decoration: BoxDecoration(
                    color: cWhite,
                    borderRadius: BorderRadius.circular(6),
                    border: (!gesture)
                        ? Border.all(
                            width: 1,
                            color: cBlack,
                          )
                        : Border.all(
                            width: 1,
                            color: Colors.transparent,
                          ),
                  ),
                  child: Center(
                    child: Text(
                      "Full time",
                      style: (gesture)
                          ? blueTextStyle.copyWith(
                              fontSize: 12,
                            )
                          : blackTextStyle.copyWith(
                              fontSize: 12,
                            ),
                    ),
                  ),
                ),
                Container(
                  height: 22,
                  padding: EdgeInsets.symmetric(horizontal: 9),
                  decoration: BoxDecoration(
                    color: cWhite,
                    borderRadius: BorderRadius.circular(6),
                    border: (!gesture)
                        ? Border.all(
                            width: 1,
                            color: cBlack,
                          )
                        : Border.all(
                            width: 1,
                            color: Colors.transparent,
                          ),
                  ),
                  child: Center(
                    child: Text(
                      "remote",
                      style: (gesture)
                          ? blueTextStyle.copyWith(
                              fontSize: 12,
                            )
                          : blackTextStyle.copyWith(
                              fontSize: 12,
                            ),
                    ),
                  ),
                ),
                Container(
                  height: 22,
                  padding: EdgeInsets.symmetric(horizontal: 9),
                  decoration: BoxDecoration(
                    color: cWhite,
                    borderRadius: BorderRadius.circular(6),
                    border: (!gesture)
                        ? Border.all(
                            width: 1,
                            color: cBlack,
                          )
                        : Border.all(
                            width: 1,
                            color: Colors.transparent,
                          ),
                  ),
                  child: Center(
                    child: Text(
                      "Anywhere",
                      style: (gesture)
                          ? blueTextStyle.copyWith(
                              fontSize: 12,
                            )
                          : blackTextStyle.copyWith(
                              fontSize: 12,
                            ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
