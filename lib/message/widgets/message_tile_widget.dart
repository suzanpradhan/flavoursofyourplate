import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class MessageTileWidget extends StatelessWidget {
  final Color? titleColor;
  final Function()? onTap;
  const MessageTileWidget(
      {Key? key, this.titleColor = CustomColors.white, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            Navigator.pushNamed(context, MESSAGE_DETAIL_ROUTE);
          },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(99),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage("assets/images/profile_image.png"))),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kimson Doan",
                      style: TextStyle(
                          fontFamily: "PoppinsRegular",
                          fontSize: 16,
                          color: titleColor),
                    ),
                    Text(
                      "Lorem ipsum dolor",
                      style: TextStyle(
                          fontFamily: "PoppinsRegular",
                          fontSize: 13,
                          color: CustomColors.greyDark),
                    )
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  decoration: BoxDecoration(
                      color: CustomColors.grey,
                      borderRadius: BorderRadius.circular(3)),
                  child: Text(
                    "12",
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: "PoppinsRegular",
                        color: CustomColors.white),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "12:09 pm",
                  style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      fontSize: 13,
                      color: CustomColors.greyDark),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
