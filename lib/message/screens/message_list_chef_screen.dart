import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/message/widgets/message_tile_widget.dart';
import 'package:flavourofyourpalette/screens/chef_main_screen_wrapper.dart';
import 'package:flavourofyourpalette/screens/main_screen_wrapper.dart';
import 'package:flutter/material.dart';

class MessageListChefScreen extends StatelessWidget {
  const MessageListChefScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChefMainScreenWrapper(
      route: MESSAGE_LIST_CHEF_SCREEN,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: CustomColors.white,
        elevation: 1,
        title: Text(
          "Messages",
          style: TextStyle(
              fontSize: 16,
              fontFamily: "PoppinsBold",
              color: CustomColors.black),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MessageTileWidget(
                  titleColor: CustomColors.black,
                  onTap: () {
                    Navigator.pushNamed(context, MESSAGE_DETAIL_CHEF_SCREEN);
                  }),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MessageTileWidget(
                titleColor: CustomColors.black,
                onTap: () {
                  Navigator.pushNamed(context, MESSAGE_DETAIL_CHEF_SCREEN);
                },
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MessageTileWidget(
                titleColor: CustomColors.black,
                onTap: () {
                  Navigator.pushNamed(context, MESSAGE_DETAIL_CHEF_SCREEN);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
