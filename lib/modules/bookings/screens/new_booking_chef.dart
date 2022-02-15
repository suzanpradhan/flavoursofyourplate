import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/modules/bookings/widgets/bookin_card.dart';
import 'package:flavourofyourpalette/screens/chef_main_screen_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class NewBookingsChefScreen extends StatelessWidget {
  const NewBookingsChefScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChefMainScreenWrapper(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: CustomColors.white,
        elevation: 0,
        toolbarHeight: 50,
        flexibleSpace: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Bookings",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "PoppinsBold",
                            color: CustomColors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          EvaIcons.search,
                          color: CustomColors.grey,
                          size: 24,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: CustomColors.greyRegular,
              )
            ],
          ),
        ),
      ),
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
            BookingCard(),
            SizedBox(
              height: 14,
            ),
            BookingCard()
          ],
        ),
      ),
      route: CHEF_NEW_BOOKINGS_SCREEN,
    );
  }
}
