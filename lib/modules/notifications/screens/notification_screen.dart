import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/modules/notifications/widgets/notif_tile_widget.dart';
import 'package:flavourofyourpalette/screens/main_screen_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flavourofyourpalette/configs/app_routes.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text(
          "Notifications",
          style: Theme.of(context).textTheme.headline3,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            EvaIcons.arrowIosBackOutline,
            color: CustomColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              NotiftileWidget(
                text: "Your new booking has been placed.",
                label: "!8m ago",
              ),
              NotiftileWidget(
                text: "You booking #OFHE987HO has been completed.",
                label: "Yesterday",
              ),
              NotiftileWidget(
                text: "Your new booking has been placed.",
                label: "2days ago",
              )
            ],
          ),
        ),
      ),
    );
  }
}
