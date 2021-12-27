import 'package:flutter/material.dart';
import 'package:job_finder/pages/main_page.dart';
import 'package:job_finder/widgets/custom_button.dart';
import 'package:job_finder/widgets/custom_option_tap.dart';
import '../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navBarSecond() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 32,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: OptionTap(
                imageUrl: "assets/arrow.png",
                width: 40,
                height: 40,
                widthImg: 24,
                heightImg: 24,
              ),
            ),
            Text(
              "Job detail",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            OptionTap(
              imageUrl: "assets/bookmark.png",
              width: 40,
              height: 40,
              widthImg: 24,
              heightImg: 24,
            ),
          ],
        ),
      );
    }

    Widget photoProfile() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 56,
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                    image: AssetImage("assets/photos.jpg"),
                  ),
                ),
              ),
              Text(
                "Senior UI Designer",
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Jakarta, Indonesia",
                style: blackTextStyle.copyWith(
                  color: cBlack.withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 255,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 22,
                      padding: EdgeInsets.symmetric(horizontal: 9),
                      decoration: BoxDecoration(
                        color: cWhite,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          "Full time",
                          style: blackTextStyle.copyWith(
                            color: cBlack.withOpacity(0.7),
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
                      ),
                      child: Center(
                        child: Text(
                          "OnSite",
                          style: blackTextStyle.copyWith(
                            color: cBlack.withOpacity(0.7),
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
                      ),
                      child: Center(
                        child: Text(
                          "Senior",
                          style: blackTextStyle.copyWith(
                            color: cBlack.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget description() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 32,
          ),
          decoration: BoxDecoration(
            color: cWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 24),
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: cBlack.withOpacity(0.4),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 48,
                      decoration: BoxDecoration(
                        color: cBlue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Description",
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Company",
                          style: blackTextStyle.copyWith(
                            color: cBlack.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "About this Job",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Currently we are in need of several UI Designers to complete our designer shortage, we hope that with this we can improve the quality of our user interface to customers, because it is very important for... Read More",
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  color: cBlack.withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Job Responsibilities",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: cBlack.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      "At least have 3 years of experience as a UI Designer",
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        color: cBlack.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: cBlack.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      "Able to work in a team or individually",
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        color: cBlack.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: cBlack.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      "Have a good passion in UI Design",
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        color: cBlack.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                name: "Apply Now",
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFD),
      body: Column(
        children: [
          navBarSecond(),
          photoProfile(),
          description(),
        ],
      ),
    );
  }
}
