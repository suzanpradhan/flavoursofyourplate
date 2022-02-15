import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(CHEF_RESERVATION_DETAIL_SCREEN);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: CustomColors.whiteShade),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Booking #458HRCD",
                  style: TextStyle(
                      fontFamily: "PoppinsBold",
                      fontSize: 16,
                      color: CustomColors.black),
                ),
                Text(
                  "1st Jan",
                  style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      fontSize: 14,
                      color: CustomColors.grey),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(99),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/image1.jpeg"))),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Edward Cisneros",
                      style: TextStyle(
                          fontSize: 18,
                          color: CustomColors.black,
                          fontFamily: "PoppinsBold"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Garlic and Thyme Salmon",
                      style: TextStyle(
                          fontFamily: "PoppinsRegular",
                          fontSize: 14,
                          color: CustomColors.grey),
                    ),
                    Text(
                      "Americano, 3-courses",
                      style: TextStyle(
                          fontFamily: "PoppinsRegular",
                          fontSize: 14,
                          color: CustomColors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: CustomColors.black,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Icon(
                        EvaIcons.phoneOutline,
                        size: 20,
                        color: CustomColors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: CustomColors.black,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Icon(
                        EvaIcons.messageCircleOutline,
                        size: 20,
                        color: CustomColors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: CustomColors.black,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Icon(
                        EvaIcons.navigation2Outline,
                        size: 20,
                        color: CustomColors.white,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
