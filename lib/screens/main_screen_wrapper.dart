import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MainScreenWrapper extends StatelessWidget {
  final Widget child;
  final String route;
  final PreferredSizeWidget? appBar;
  const MainScreenWrapper(
      {Key? key, required this.child, this.appBar, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: child,
      bottomNavigationBar: Container(
        height: 50,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: CustomColors.darkShade,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        if (route != HOMEPAGE_ROUTE) {
                          Navigator.pushReplacementNamed(
                              context, HOMEPAGE_ROUTE);
                        }
                      },
                      icon: Icon(EvaIcons.home,
                          color: (route == HOMEPAGE_ROUTE)
                              ? CustomColors.yellowRegular
                              : CustomColors.greyRegular)),
                  IconButton(
                      onPressed: () {
                        if (route != MENUS_SCREEN) {
                          Navigator.pushReplacementNamed(context, MENUS_SCREEN);
                        }
                      },
                      icon: Icon(EvaIcons.bookOpenOutline,
                          color: (route == MENUS_SCREEN)
                              ? CustomColors.yellowRegular
                              : CustomColors.greyRegular)),
                  IconButton(
                      onPressed: () {
                        if (route != MESSAGE_LIST_ROUTE) {
                          Navigator.pushReplacementNamed(
                              context, MESSAGE_LIST_ROUTE);
                        }
                      },
                      icon: Icon(EvaIcons.messageCircleOutline,
                          color: (route == MESSAGE_LIST_ROUTE)
                              ? CustomColors.yellowRegular
                              : CustomColors.greyRegular)),
                  IconButton(
                      onPressed: () {
                        if (route != RESERVATION_ROUTE) {
                          Navigator.pushReplacementNamed(
                              context, RESERVATION_ROUTE);
                        }
                      },
                      icon: Icon(EvaIcons.calendarOutline,
                          color: (route == RESERVATION_ROUTE)
                              ? CustomColors.yellowRegular
                              : CustomColors.greyRegular)),
                  InkWell(
                    onTap: () {
                      if (route != PROFILE_ROUTE) {
                        Navigator.pushReplacementNamed(context, PROFILE_ROUTE);
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
