import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/modules/home/widgets/feed_card.dart';
import 'package:flavourofyourpalette/modules/home/widgets/menus_card.dart';
import 'package:flavourofyourpalette/screens/main_screen_wrapper.dart';
import 'package:flutter/material.dart';

class MenuScreens extends StatelessWidget {
  const MenuScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreenWrapper(
      route: MENUS_SCREEN,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                        "Menus",
                        style: Theme.of(context).textTheme.headline3,
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
                color: CustomColors.darkShade,
              )
            ],
          ),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MenusCard(),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MenusCard(),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MenusCard(),
              ),
              SizedBox(
                height: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
