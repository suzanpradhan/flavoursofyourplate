import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/modules/profile/widgets/settings_tile.dart';
import 'package:flavourofyourpalette/screens/chef_main_screen_wrapper.dart';
import 'package:flavourofyourpalette/screens/main_screen_wrapper.dart';
import 'package:flutter/material.dart';

class ChefProfileScreen extends StatefulWidget {
  static const String route = PROFILE_ROUTE;
  const ChefProfileScreen({Key? key}) : super(key: key);

  @override
  State<ChefProfileScreen> createState() => _ChefProfileScreenState();
}

class _ChefProfileScreenState extends State<ChefProfileScreen> {
  bool isMyposts = true;

  @override
  Widget build(BuildContext context) {
    return ChefMainScreenWrapper(
      route: CHEF_PROFILE_SCREEN,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: CustomColors.white,
        title: Text(
          "My profile",
          style: TextStyle(
              fontSize: 16,
              fontFamily: "PoppinsBold",
              color: CustomColors.black),
        ),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Align(
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(120),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/profile_image.png"))),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    width: 100,
                    height: 28,
                    constraints: BoxConstraints(minWidth: 0),
                    decoration: BoxDecoration(
                        color: CustomColors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          EvaIcons.edit,
                          color: CustomColors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 12,
                              color: CustomColors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("Alex Brooker",
                      style: TextStyle(
                          fontFamily: "PoppinsRegular",
                          fontSize: 16,
                          color: CustomColors.white)),
                  Text(
                    "Maharajgunj, Kathmandu",
                    style: TextStyle(
                        fontFamily: "PoppinsLight",
                        fontSize: 14,
                        color: CustomColors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: CustomColors.darkShade),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Bookings",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            "53",
                            style: Theme.of(context).textTheme.headline3,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 32,
                      color: CustomColors.greyDark,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Ongoing",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            "1",
                            style: Theme.of(context).textTheme.headline3,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 32,
                      color: CustomColors.greyDark,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Completed",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            "53",
                            style: Theme.of(context).textTheme.headline3,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            SettingTileScreen(
                icon: EvaIcons.bell,
                text: "Notifications",
                textColor: CustomColors.black,
                iconColor: CustomColors.black,
                onTap: () {}),
            SettingTileScreen(
              icon: EvaIcons.car,
              text: "Bookings",
              onTap: () {},
              textColor: CustomColors.black,
              iconColor: CustomColors.black,
            ),
            SettingTileScreen(
              icon: EvaIcons.settings,
              text: "Settings",
              onTap: () {},
              textColor: CustomColors.black,
              iconColor: CustomColors.black,
            ),
            SettingTileScreen(
              icon: EvaIcons.star,
              text: "Rate Us",
              onTap: () {},
              textColor: CustomColors.black,
              iconColor: CustomColors.black,
            ),
            SettingTileScreen(
                icon: EvaIcons.questionMarkCircle,
                text: "Help Center",
                textColor: CustomColors.black,
                iconColor: CustomColors.black,
                onTap: () {}),
            SettingTileScreen(
                icon: EvaIcons.logOut,
                isLogOut: true,
                text: "Log Out",
                onTap: () {
                  Navigator.pushReplacementNamed(context, LOGIN_CHEF_SCREEN);
                }),
          ],
        ),
      ),
    );
  }
}
