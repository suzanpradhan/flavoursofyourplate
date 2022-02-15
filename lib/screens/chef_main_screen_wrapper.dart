import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ChefMainScreenWrapper extends StatelessWidget {
  final Widget child;
  final String route;
  final PreferredSizeWidget? appBar;
  const ChefMainScreenWrapper(
      {Key? key, required this.child, this.appBar, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: appBar,
      body: child,
      bottomNavigationBar: Container(
        height: 50,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: CustomColors.greyRegular,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        if (route != CHEF_NEW_BOOKINGS_SCREEN) {
                          Navigator.pushReplacementNamed(
                              context, CHEF_NEW_BOOKINGS_SCREEN);
                        }
                      },
                      icon: Icon(EvaIcons.calendar,
                          color: (route == CHEF_NEW_BOOKINGS_SCREEN)
                              ? CustomColors.black
                              : CustomColors.greyRegular)),
                  IconButton(
                      onPressed: () {
                        if (route != MY_BOOKINGS_CHEF_SCREEN) {
                          Navigator.pushReplacementNamed(
                              context, MY_BOOKINGS_CHEF_SCREEN);
                        }
                      },
                      icon: Icon(EvaIcons.clock,
                          color: (route == MY_BOOKINGS_CHEF_SCREEN)
                              ? CustomColors.black
                              : CustomColors.greyRegular)),
                  IconButton(
                      onPressed: () {
                        if (route != MESSAGE_LIST_CHEF_SCREEN) {
                          Navigator.pushReplacementNamed(
                              context, MESSAGE_LIST_CHEF_SCREEN);
                        }
                      },
                      icon: Icon(EvaIcons.messageCircleOutline,
                          color: (route == MESSAGE_LIST_CHEF_SCREEN)
                              ? CustomColors.black
                              : CustomColors.greyRegular)),
                  InkWell(
                    onTap: () {
                      if (route != CHEF_PROFILE_SCREEN) {
                        Navigator.pushReplacementNamed(
                            context, CHEF_PROFILE_SCREEN);
                      }
                    },
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(99),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/profile_image.png"))),
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
}
