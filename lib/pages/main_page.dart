import 'package:flutter/material.dart';
import 'package:job_finder/pages/detail_page.dart';
import 'package:job_finder/widgets/custom_card_job.dart';
import 'package:job_finder/widgets/custom_navbar.dart';
import 'package:job_finder/widgets/custom_option_tap.dart';
import 'package:job_finder/widgets/custom_recommendation_job.dart';
import '../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget topOption() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 24,
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OptionTap(
              imageUrl: "assets/category.png",
            ),
            OptionTap(
              imageUrl: "assets/notification.png",
            )
          ],
        ),
      );
    }

    Widget welcome() {
      return Container(
        margin: EdgeInsets.only(left: 24, right: 24, top: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Yeeds!",
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Find Your Dream Job",
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            )
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 24,
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 280,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: cWhite,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: cBlack.withOpacity(0.7),
                  ),
                  contentPadding: EdgeInsets.all(15),
                  border: InputBorder.none,
                  hintText: "Search your dream job",
                  hintStyle: blackTextStyle.copyWith(
                    color: cBlack.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: cBlue,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/filter.png",
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget titlePopular() {
      return Container(
        margin: EdgeInsets.only(left: 24, top: 24),
        child: Text(
          "Popular Job",
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
      );
    }

    Widget popularJob() {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCard(
                gesture: true,
                price: "\$50K - \$60K",
                job: "Senior Graphic Designer",
                place: "Dsgn Agency • Jakarta, Id",
                imageUrl: "assets/photos.jpg",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailPage(),
                    ),
                  );
                },
                color: cBlue,
              ),
              CustomCard(
                price: "\$50K - \$60K",
                job: "Senior UI UX Designer",
                place: "Google LLC • Jakarta, Id ",
                imageUrl: "assets/people2.png",
                onTap: () {},
                color: cWhite,
              ),
              CustomCard(
                price: "\$50K - \$60K",
                job: "Senior Graphic Designer",
                place: "Google LLC • Jakarta, Id ",
                imageUrl: "assets/people2.png",
                onTap: () {},
                color: cWhite,
              ),
              SizedBox(
                width: 24,
              )
            ],
          ),
        ),
      );
    }

    Widget recommendationJob() {
      return Container(
        margin: EdgeInsets.only(left: 24, right: 24, top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recommendation Job",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRecommend(
                  imageUrl: "assets/tokopedia.png",
                  brand: "Tokopedia",
                  job: "Sr. UI Designer",
                ),
                CustomRecommend(
                  imageUrl: "assets/gojek.png",
                  brand: "Gojek",
                  job: "Software Engineer",
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRecommend(
                  imageUrl: "assets/youtube.png",
                  brand: "Youtube",
                  job: "Project Manager",
                  place: "California, USA",
                ),
                CustomRecommend(
                  imageUrl: "assets/shopee.png",
                  brand: "Shopee",
                  job: "UI UX Designer",
                  place: "Singapore",
                  system: "Remote",
                ),
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFD),
      body: Stack(
        children: [
          ListView(
            children: [
              topOption(),
              welcome(),
              search(),
              titlePopular(),
              popularJob(),
              recommendationJob(),
            ],
          ),
          CustomNavbar()
        ],
      ),
    );
  }
}
