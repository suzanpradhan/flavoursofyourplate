import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/modules/bookings/widgets/bookin_card.dart';
import 'package:flavourofyourpalette/modules/reservations/widgets/reservation_card.dart';
import 'package:flavourofyourpalette/screens/chef_main_screen_wrapper.dart';
import 'package:flavourofyourpalette/screens/main_screen_wrapper.dart';
import 'package:flutter/material.dart';

class MyBookingsChefScreen extends StatefulWidget {
  const MyBookingsChefScreen({Key? key}) : super(key: key);

  @override
  State<MyBookingsChefScreen> createState() => _MyBookingsChefScreenState();
}

class _MyBookingsChefScreenState extends State<MyBookingsChefScreen> {
  bool isPending = true;
  @override
  Widget build(BuildContext context) {
    return ChefMainScreenWrapper(
      route: MY_BOOKINGS_CHEF_SCREEN,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: CustomColors.white,
        elevation: 1,
        title: Text(
          "Reservations",
          style: TextStyle(
              fontSize: 16,
              fontFamily: "PoppinsBold",
              color: CustomColors.black),
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal:
                        BorderSide(width: 1, color: CustomColors.greyRegular))),
            height: 44,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isPending = true;
                      });
                    },
                    child: Container(
                      color:
                          isPending ? CustomColors.black : CustomColors.white,
                      child: Center(
                        child: Text(
                          "Pending",
                          style: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 14,
                              color: isPending
                                  ? CustomColors.greyRegular
                                  : CustomColors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isPending = false;
                      });
                    },
                    child: Container(
                      color:
                          !isPending ? CustomColors.black : CustomColors.white,
                      child: Center(
                        child: Text(
                          "Completed",
                          style: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 14,
                              color: !isPending
                                  ? CustomColors.white
                                  : CustomColors.black),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  BookingCard(),
                  SizedBox(
                    height: 14,
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
