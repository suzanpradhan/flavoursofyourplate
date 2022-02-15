import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Function() onTap;

  const CustomButton({Key? key, this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: CustomColors.yellowRegular,
            borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Text(
            (text != null) ? text! : "",
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
    );
  }
}

class CustomButtonChef extends StatelessWidget {
  final String? text;
  final Function() onTap;

  const CustomButtonChef({Key? key, this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: CustomColors.black, borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Text((text != null) ? text! : "",
              style: TextStyle(
                  fontFamily: "PoppinsBold",
                  fontSize: 14,
                  color: CustomColors.white)),
        ),
      ),
    );
  }
}
