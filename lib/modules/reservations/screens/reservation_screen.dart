import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/modules/reservations/widgets/reservation_card.dart';
import 'package:flavourofyourpalette/screens/main_screen_wrapper.dart';
import 'package:flutter/material.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  bool isPending = true;
  @override
  Widget build(BuildContext context) {
    return MainScreenWrapper(
      route: RESERVATION_ROUTE,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text(
          "Reservations",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal:
                        BorderSide(width: 1, color: CustomColors.grey))),
            height: 44,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isPending = true;
                      });
                    },
                    child: Container(
                      color: isPending ? CustomColors.grey : CustomColors.black,
                      child: Center(
                        child: Text(
                          "Pending",
                          style: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 14,
                              color: CustomColors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isPending = false;
                      });
                    },
                    child: Container(
                      color:
                          !isPending ? CustomColors.grey : CustomColors.black,
                      child: Center(
                        child: Text(
                          "Completed",
                          style: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 14,
                              color: CustomColors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ReservationCard(),
                ),
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ReservationCard(),
                ),
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ReservationCard(),
                ),
                SizedBox(
                  height: 14,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
