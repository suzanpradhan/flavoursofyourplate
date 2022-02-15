import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class PaymentCompletedScreen extends StatelessWidget {
  const PaymentCompletedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: CustomColors.black),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text(
          "Booking Completed",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                decoration: BoxDecoration(
                    color: CustomColors.darkShade,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                          color: CustomColors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        EvaIcons.checkmarkCircle2,
                        color: CustomColors.black,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        "You have successfully placed your order.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "PoppinsBold",
                            fontSize: 14,
                            color: CustomColors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                    color: CustomColors.darkShade,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
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
              ),
              SizedBox(
                height: 14,
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushReplacementNamed(context, RESERVATION_ROUTE);
                },
                text: "MY BOOKINGS",
              )
            ],
          ),
        ),
      ),
    );
  }
}
