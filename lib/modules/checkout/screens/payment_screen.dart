import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: CustomColors.black),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 14,
              ),
              Text(
                'Payment Option',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: BoxDecoration(
                    color: CustomColors.darkShade,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/credit_cards_image.png",
                      height: 24,
                      width: 80,
                    ),
                    Text(
                      "Credit Card",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Icon(
                      EvaIcons.checkmarkCircle2,
                      size: 20,
                      color: CustomColors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: BoxDecoration(
                    color: CustomColors.darkShade,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/paypal_icon.png",
                      height: 24,
                      width: 80,
                    ),
                    Text(
                      "Paypal",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox()
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, PAYMENT_COMPLETED_SCREEN);
                },
                text: "PAY",
              )
            ],
          ),
        ),
      ),
    );
  }
}
