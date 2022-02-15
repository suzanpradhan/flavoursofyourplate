import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class SettingTileScreen extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function() onTap;
  final Color? textColor;
  final Color? iconColor;
  final bool? isLogOut;
  const SettingTileScreen(
      {Key? key,
      required this.icon,
      this.iconColor,
      required this.text,
      this.textColor,
      required this.onTap,
      this.isLogOut = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 50,
          child: Row(
            children: [
              Icon(
                icon,
                color: iconColor ??
                    ((isLogOut!) ? Colors.redAccent : CustomColors.white),
              ),
              SizedBox(
                width: 14,
              ),
              Expanded(
                child: Text(
                  text,
                  style: (!isLogOut!)
                      ? TextStyle(
                          fontFamily: "PoppinsLight",
                          fontSize: 14,
                          color: textColor ?? CustomColors.white)
                      : TextStyle(
                          fontFamily: "PoppinsRegular",
                          fontSize: 14,
                          color: Colors.redAccent),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
