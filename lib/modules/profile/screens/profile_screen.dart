import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/modules/profile/widgets/settings_tile.dart';
import 'package:flavourofyourpalette/screens/main_screen_wrapper.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = PROFILE_ROUTE;
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isMyposts = true;

  @override
  Widget build(BuildContext context) {
    return MainScreenWrapper(
      route: PROFILE_ROUTE,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "My profile",
          style: Theme.of(context).textTheme.headline3,
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
                        color: CustomColors.yellowRegular,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          EvaIcons.edit,
                          color: CustomColors.darkShade,
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
                              color: CustomColors.darkShade),
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
                onTap: () {
                  Navigator.pushNamed(context, NOTIFICATION_ROUTE);
                }),
            SettingTileScreen(
                icon: EvaIcons.car, text: "Bookings", onTap: () {}),
            SettingTileScreen(
                icon: EvaIcons.settings, text: "Settings", onTap: () {}),
            SettingTileScreen(
                icon: EvaIcons.star, text: "Rate Us", onTap: () {}),
            SettingTileScreen(
                icon: EvaIcons.questionMarkCircle,
                text: "Help Center",
                onTap: () {}),
            SettingTileScreen(
                icon: EvaIcons.logOut,
                isLogOut: true,
                text: "Log Out",
                onTap: () {
                  Navigator.pushReplacementNamed(context, LOGIN_ROUTE);
                }),
          ],
        ),
      ),
    );
  }
}
