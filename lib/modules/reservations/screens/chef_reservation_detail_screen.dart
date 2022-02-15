import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class ChefReservationDetailScreen extends StatelessWidget {
  const ChefReservationDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: CustomColors.white,
          elevation: 1,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                EvaIcons.arrowIosBackOutline,
                color: CustomColors.black,
              )),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 14,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                  decoration: BoxDecoration(
                      color: CustomColors.whiteShade,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/profile_image.png"))),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Edward Cisneros",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "PoppinsRegular",
                                color: CustomColors.black),
                          ),
                        ],
                      )),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: CustomColors.black,
                              borderRadius: BorderRadius.circular(99),
                            ),
                            child: Icon(
                              EvaIcons.phone,
                              size: 20,
                              color: CustomColors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: CustomColors.black,
                              borderRadius: BorderRadius.circular(99),
                            ),
                            child: Icon(
                              EvaIcons.messageCircle,
                              size: 20,
                              color: CustomColors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: CustomColors.whiteShade,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Booking #HORO56",
                                style: TextStyle(
                                    fontFamily: "PoppinsBold",
                                    fontSize: 14,
                                    color: CustomColors.black),
                              ),
                              Text(
                                "14 Sep 2021 in 17:30",
                                style: TextStyle(
                                    fontFamily: "PoppinsRegular",
                                    fontSize: 12,
                                    color: CustomColors.greyRegular),
                              ),
                              Text(
                                "Edward Cisneros",
                                style: TextStyle(
                                    fontFamily: "PoppinsRegular",
                                    fontSize: 12,
                                    color: CustomColors.greyRegular),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    EvaIcons.pinOutline,
                                    color: CustomColors.black,
                                    size: 14,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Sallaghari, Maharagunj, Kathmandu",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontFamily: "PoppinsRegular",
                                          fontSize: 12,
                                          color: CustomColors.greyRegular),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "PENDING",
                                style: TextStyle(
                                    fontFamily: "PoppinsBold",
                                    fontSize: 14,
                                    color: CustomColors.black),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Grand Total",
                                    style: TextStyle(
                                        fontFamily: "PoppinsRegular",
                                        fontSize: 12,
                                        color: CustomColors.greyRegular),
                                  ),
                                  Text(
                                    "Rs. 3490.56",
                                    style: TextStyle(
                                        fontFamily: "PoppinsBold",
                                        fontSize: 14,
                                        color: CustomColors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Chef Location",
                  style: TextStyle(
                      fontFamily: "PoppinsBold",
                      fontSize: 14,
                      color: CustomColors.black),
                ),
                SizedBox(
                  height: 12,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 180,
                    child: FlutterMap(
                      options: MapOptions(
                        center: LatLng(51.5, -0.09),
                        zoom: 13.0,
                      ),
                      layers: [
                        TileLayerOptions(
                          urlTemplate:
                              "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                          attributionBuilder: (_) {
                            return Text("© OpenStreetMap contributors");
                          },
                        ),
                        MarkerLayerOptions(
                          markers: [
                            Marker(
                              width: 80.0,
                              height: 80.0,
                              point: LatLng(51.5, -0.09),
                              builder: (ctx) => Container(
                                child: Icon(EvaIcons.pinOutline),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Booking Status",
                  style: TextStyle(
                      fontFamily: "PoppinsBold",
                      fontSize: 14,
                      color: CustomColors.black),
                ),
                SizedBox(
                  height: 12,
                ),
                Stepper(
                    elevation: 0,
                    controlsBuilder: (context, details) => Container(),
                    physics: NeverScrollableScrollPhysics(),
                    margin: EdgeInsets.zero,
                    type: StepperType.vertical,
                    currentStep: 0,
                    steps: [
                      Step(
                          title: Text(
                            "On the way",
                            style: TextStyle(
                                fontFamily: "PoppinsBold",
                                fontSize: 14,
                                color: CustomColors.black),
                          ),
                          content: Container()),
                      Step(
                          title: Text(
                            "Preparing",
                            style: TextStyle(
                                fontFamily: "PoppinsLight",
                                fontSize: 14,
                                color: CustomColors.grey),
                          ),
                          content: Container()),
                      Step(
                          title: Text(
                            "Cooking",
                            style: TextStyle(
                                fontFamily: "PoppinsLight",
                                fontSize: 14,
                                color: CustomColors.grey),
                          ),
                          content: Container()),
                      Step(
                          title: Text(
                            "Serving",
                            style: TextStyle(
                                fontFamily: "PoppinsLight",
                                fontSize: 14,
                                color: CustomColors.grey),
                          ),
                          content: Container()),
                      Step(
                          title: Text(
                            "End",
                            style: TextStyle(
                                fontFamily: "PoppinsLight",
                                fontSize: 14,
                                color: CustomColors.grey),
                          ),
                          content: Container())
                    ]),
                CustomButtonChef(
                  text: "GO TO NEXT STEP",
                  onTap: () {},
                ),
                SizedBox(
                  height: 24,
                )
              ],
            ),
          ),
        ));
  }
}
