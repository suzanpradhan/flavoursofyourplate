import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ReservationCard extends StatelessWidget {
  const ReservationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RESERVATION_DETAIL_SCREEN);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: CustomColors.darkShade,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Booking #HORO56",
                          style: TextStyle(
                              fontFamily: "PoppinsBold",
                              fontSize: 14,
                              color: CustomColors.white),
                        ),
                        Text(
                          "14 Sep 2021 in 17:30",
                          style: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 12,
                              color: CustomColors.greyRegular),
                        ),
                        Text(
                          "Edward Cisneros",
                          style: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 12,
                              color: CustomColors.greyRegular),
                        ),
                        Row(
                          children: [
                            Icon(
                              EvaIcons.pinOutline,
                              color: CustomColors.white,
                              size: 14,
                            ),
                            Expanded(
                              child: Text(
                                "Sallaghari, Maharagunj, Kathmandu",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    fontFamily: "PoppinsRegular",
                                    fontSize: 12,
                                    color: CustomColors.greyRegular),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "PENDING",
                          style: TextStyle(
                              fontFamily: "PoppinsBold",
                              fontSize: 14,
                              color: CustomColors.black),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Grand Total",
                              style: TextStyle(
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 12,
                                  color: CustomColors.greyRegular),
                            ),
                            Text(
                              "Rs. 3490.56",
                              style: TextStyle(
                                  fontFamily: "PoppinsBold",
                                  fontSize: 14,
                                  color: CustomColors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              height: 80,
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.fromLTRB(14, 0, 6, 0),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            )
          ],
        ),
      ),
    );
  }
}
