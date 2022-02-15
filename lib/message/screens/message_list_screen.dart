import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/message/widgets/message_tile_widget.dart';
import 'package:flavourofyourpalette/screens/main_screen_wrapper.dart';
import 'package:flutter/material.dart';

class MessageListScreen extends StatelessWidget {
  const MessageListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreenWrapper(
      route: MESSAGE_LIST_ROUTE,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text(
          "Messages",
          style: Theme.of(context).textTheme.headline3,
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
              child: MessageTileWidget(),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MessageTileWidget(),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MessageTileWidget(),
            )
          ],
        ),
      ),
    );
  }
}
