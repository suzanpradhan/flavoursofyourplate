import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final String? title;
  final String? placeholder;
  final bool obsecureText;
  final Color? backgroundColor;
  final TextStyle? textStyle;

  const FormInput(
      {Key? key,
      this.title,
      this.placeholder,
      this.obsecureText = false,
      this.backgroundColor = Colors.black,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (title != null)
              ? Text(
                  title!,
                  style: Theme.of(context).textTheme.headline3,
                )
              : SizedBox(),
          TextField(
            obscureText: obsecureText,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.grey,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.grey,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.grey,
                    width: 1,
                  ),
                ),
                fillColor: backgroundColor,
                filled: true,
                hintText: placeholder,
                hintStyle: Theme.of(context).textTheme.bodyText2,
                isDense: true),
            cursorColor: CustomColors.yellowRegular,
            style: textStyle ?? Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
