import 'package:flutter/material.dart';
import '../shared/theme.dart';

class CustomRecommend extends StatelessWidget {
  final String imageUrl;
  final String brand;
  final String job;
  final String place;
  final String system;
  const CustomRecommend(
      {Key? key,
      required this.imageUrl,
      required this.brand,
      required this.job,
      this.place = "Jakarta, Indonesia",
      this.system = "onsite"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 165,
      height: 111,
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    brand,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    system,
                    style: blackTextStyle.copyWith(
                      fontSize: 11,
                      color: cBlack.withOpacity(0.7),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 19,
          ),
          Text(
            job,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 4),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/location.png"),
                  ),
                ),
              ),
              Text(
                place,
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  color: cBlack.withOpacity(0.7),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
