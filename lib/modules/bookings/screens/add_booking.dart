import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AddBookigingScreen extends StatefulWidget {
  const AddBookigingScreen({Key? key}) : super(key: key);

  @override
  State<AddBookigingScreen> createState() => _AddBookigingScreenState();
}

class _AddBookigingScreenState extends State<AddBookigingScreen> {
  double sliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              EvaIcons.arrowIosBackOutline,
              color: CustomColors.white,
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
                Text(
                  "Mark Your Location",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 12,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
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
                  "How many people?",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 12,
                ),
                Slider(
                    thumbColor: CustomColors.yellowRegular,
                    divisions: 9,
                    label: sliderValue.toInt().toString(),
                    inactiveColor: CustomColors.grey,
                    activeColor: CustomColors.yellowRegular,
                    max: 10,
                    min: 1,
                    value: sliderValue,
                    onChanged: (value) {
                      setState(() {
                        sliderValue = value;
                      });
                    }),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Set Date",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 12,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      child: SfDateRangePicker(
                    monthViewSettings: DateRangePickerMonthViewSettings(
                        viewHeaderStyle: DateRangePickerViewHeaderStyle(
                            textStyle: Theme.of(context).textTheme.bodyText1)),
                    rangeTextStyle: Theme.of(context).textTheme.bodyText1,
                    monthCellStyle: DateRangePickerMonthCellStyle(
                        todayTextStyle: Theme.of(context).textTheme.bodyText1,
                        disabledDatesTextStyle:
                            Theme.of(context).textTheme.bodyText2,
                        textStyle: Theme.of(context).textTheme.bodyText1),
                    headerStyle: DateRangePickerHeaderStyle(
                        textAlign: TextAlign.center,
                        textStyle: Theme.of(context).textTheme.bodyText1),
                    backgroundColor: CustomColors.darkShade,
                    selectionColor: CustomColors.yellowRegular,
                    selectionTextStyle: Theme.of(context).textTheme.button,
                  )),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Set time",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 8),
                  decoration: BoxDecoration(
                      color: CustomColors.darkShade,
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton(
                      style: Theme.of(context).textTheme.headline3,
                      value: 1,
                      isExpanded: true,
                      underline: SizedBox(),
                      dropdownColor: CustomColors.darkShade,
                      items: [
                        DropdownMenuItem(
                            value: 1,
                            child: Text(
                              "12:00 AM",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "1:00 PM",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 3,
                            child: Text(
                              "3:00 PM",
                              style: Theme.of(context).textTheme.headline3,
                            ))
                      ],
                      onChanged: (value) {}),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Note",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: CustomColors.darkShade,
                  ),
                  child: TextField(
                    maxLines: 99,
                    minLines: 5,
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Leave a note for chef...",
                        hintStyle: Theme.of(context).textTheme.bodyText2),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Questions",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Venue Type",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 8),
                  decoration: BoxDecoration(
                      color: CustomColors.darkShade,
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton(
                      style: Theme.of(context).textTheme.headline3,
                      value: 1,
                      isExpanded: true,
                      underline: SizedBox(),
                      dropdownColor: CustomColors.darkShade,
                      items: [
                        DropdownMenuItem(
                            value: 1,
                            child: Text(
                              "Private Home",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "Airbnb",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 3,
                            child: Text(
                              "Friend's home",
                              style: Theme.of(context).textTheme.headline3,
                            ))
                      ],
                      onChanged: (value) {}),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Stove Type",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 8),
                  decoration: BoxDecoration(
                      color: CustomColors.darkShade,
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton(
                      style: Theme.of(context).textTheme.headline3,
                      value: 1,
                      isExpanded: true,
                      underline: SizedBox(),
                      dropdownColor: CustomColors.darkShade,
                      items: [
                        DropdownMenuItem(
                            value: 1,
                            child: Text(
                              "Gas",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "Electric",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 3,
                            child: Text(
                              "Electric",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 3,
                            child: Text(
                              "Range",
                              style: Theme.of(context).textTheme.headline3,
                            ))
                      ],
                      onChanged: (value) {}),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Is there an elevator or a staircase?",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 8),
                  decoration: BoxDecoration(
                      color: CustomColors.darkShade,
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton(
                      style: Theme.of(context).textTheme.headline3,
                      value: 1,
                      isExpanded: true,
                      underline: SizedBox(),
                      dropdownColor: CustomColors.darkShade,
                      items: [
                        DropdownMenuItem(
                            value: 1,
                            child: Text(
                              "Yes",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "No",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                      ],
                      onChanged: (value) {}),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Type of Services",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: CustomColors.black,
                          border:
                              Border.all(width: 1, color: CustomColors.white)),
                      child: Row(
                        children: [
                          Icon(
                            EvaIcons.checkmarkCircle2,
                            color: CustomColors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Home Catering",
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: CustomColors.black,
                          border:
                              Border.all(width: 1, color: CustomColors.grey)),
                      child: Text("Cooking Classes",
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: CustomColors.black,
                          border:
                              Border.all(width: 1, color: CustomColors.grey)),
                      child: Text("Dessert Tables",
                          style: Theme.of(context).textTheme.bodyText1),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Serving Styles",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: CustomColors.black,
                          border:
                              Border.all(width: 1, color: CustomColors.white)),
                      child: Row(
                        children: [
                          Icon(
                            EvaIcons.checkmarkCircle2,
                            color: CustomColors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Buffet",
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: CustomColors.black,
                          border:
                              Border.all(width: 1, color: CustomColors.grey)),
                      child: Text("Family style",
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: CustomColors.black,
                          border:
                              Border.all(width: 1, color: CustomColors.grey)),
                      child: Text("Multicourse",
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: CustomColors.black,
                          border:
                              Border.all(width: 1, color: CustomColors.grey)),
                      child: Text("Desserts",
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: CustomColors.black,
                          border:
                              Border.all(width: 1, color: CustomColors.grey)),
                      child: Text("Combination",
                          style: Theme.of(context).textTheme.bodyText1),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Cusines",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 8),
                  decoration: BoxDecoration(
                      color: CustomColors.darkShade,
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton(
                      style: Theme.of(context).textTheme.headline3,
                      value: 1,
                      isExpanded: true,
                      underline: SizedBox(),
                      dropdownColor: CustomColors.darkShade,
                      items: [
                        DropdownMenuItem(
                            value: 1,
                            child: Text(
                              "Caribbean",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "Mexican",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "Italian",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "French",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                      ],
                      onChanged: (value) {}),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Day Time",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 8),
                  decoration: BoxDecoration(
                      color: CustomColors.darkShade,
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton(
                      style: Theme.of(context).textTheme.headline3,
                      value: 1,
                      isExpanded: true,
                      underline: SizedBox(),
                      dropdownColor: CustomColors.darkShade,
                      items: [
                        DropdownMenuItem(
                            value: 1,
                            child: Text(
                              "Caribbean",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "Mexican",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "Italian",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                        DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "French",
                              style: Theme.of(context).textTheme.headline3,
                            )),
                      ],
                      onChanged: (value) {}),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Allergies",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: CustomColors.darkShade,
                  ),
                  child: TextField(
                    maxLines: 99,
                    minLines: 4,
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write here...",
                        hintStyle: Theme.of(context).textTheme.bodyText2),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, PAYMENT_SCREEN);
                  },
                  text: "CHECKOUT",
                )
              ],
            ),
          )),
    );
  }
}
