import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/widgets/custom_button.dart';
import 'package:flavourofyourpalette/widgets/form_input.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ChefProfileSetupScreen extends StatelessWidget {
  const ChefProfileSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            constraints:
                BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Profile Setup",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: CustomColors.black,
                                    fontFamily: "PoppinsBold")),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(120),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/profile_image.png"))),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: CustomColors.black),
                            child: Text(
                              "Add Image",
                              style: TextStyle(
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 14,
                                  color: CustomColors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 42,
                        ),
                        Text("Basic Details",
                            style: TextStyle(
                                fontSize: 18,
                                color: CustomColors.black,
                                fontFamily: "PoppinsBold")),
                        SizedBox(
                          height: 24,
                        ),
                        FormInput(
                            placeholder: "Fullname",
                            backgroundColor: CustomColors.white,
                            textStyle: TextStyle(
                                fontFamily: "PoppinsRegular",
                                fontSize: 14,
                                color: CustomColors.black)),
                        SizedBox(
                          height: 16,
                        ),
                        FormInput(
                            placeholder: "Address",
                            backgroundColor: CustomColors.white,
                            textStyle: TextStyle(
                                fontFamily: "PoppinsRegular",
                                fontSize: 14,
                                color: CustomColors.black)),
                        SizedBox(
                          height: 16,
                        ),
                        FormInput(
                            placeholder: "Phone Number",
                            backgroundColor: CustomColors.white,
                            textStyle: TextStyle(
                                fontFamily: "PoppinsRegular",
                                fontSize: 14,
                                color: CustomColors.black)),
                        SizedBox(
                          height: 16,
                        ),
                        Text("Bio/Cook Experience",
                            style: TextStyle(
                                fontFamily: "PoppinsBold",
                                fontSize: 14,
                                color: CustomColors.black)),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: CustomColors.whiteShade,
                          ),
                          child: TextField(
                              maxLines: 99,
                              minLines: 5,
                              style: TextStyle(
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 14,
                                  color: CustomColors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write about your experience...",
                                hintStyle: TextStyle(
                                    fontFamily: "PoppinsRegular",
                                    fontSize: 14,
                                    color: CustomColors.black),
                              )),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text("Can Cook:",
                            style: TextStyle(
                                fontFamily: "PoppinsRegular",
                                fontSize: 14,
                                color: CustomColors.black)),
                        SizedBox(
                          height: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.white,
                                  border: Border.all(
                                      width: 1, color: CustomColors.black)),
                              child: Row(
                                children: [
                                  Icon(
                                    EvaIcons.checkmarkCircle2,
                                    color: CustomColors.black,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Breakfast",
                                      style: TextStyle(
                                          fontFamily: "PoppinsRegular",
                                          fontSize: 14,
                                          color: CustomColors.black)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Brunch",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Lunch",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Dinner",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text("Types Services you offer:",
                            style: TextStyle(
                                fontFamily: "PoppinsRegular",
                                fontSize: 14,
                                color: CustomColors.black)),
                        SizedBox(
                          height: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.white,
                                  border: Border.all(
                                      width: 1, color: CustomColors.black)),
                              child: Row(
                                children: [
                                  Icon(
                                    EvaIcons.checkmarkCircle2,
                                    color: CustomColors.black,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("in home catering",
                                      style: TextStyle(
                                          fontFamily: "PoppinsRegular",
                                          fontSize: 14,
                                          color: CustomColors.black)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Cooking classes",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Dessert tables",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text("Will you offer a VIP package?",
                            style: TextStyle(
                                fontFamily: "PoppinsRegular",
                                fontSize: 14,
                                color: CustomColors.black)),
                        SizedBox(
                          height: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.white,
                                  border: Border.all(
                                      width: 1, color: CustomColors.black)),
                              child: Row(
                                children: [
                                  Icon(
                                    EvaIcons.checkmarkCircle2,
                                    color: CustomColors.black,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Tablescape Design",
                                      style: TextStyle(
                                          fontFamily: "PoppinsRegular",
                                          fontSize: 14,
                                          color: CustomColors.black)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Dinnerware",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Flatware",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.white,
                                  border: Border.all(
                                      width: 1, color: CustomColors.black)),
                              child: Row(
                                children: [
                                  Icon(
                                    EvaIcons.checkmarkCircle2,
                                    color: CustomColors.black,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Linens",
                                      style: TextStyle(
                                          fontFamily: "PoppinsRegular",
                                          fontSize: 14,
                                          color: CustomColors.black)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Personalized Printed menu card",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text("Cuisine Expertise:",
                            style: TextStyle(
                                fontFamily: "PoppinsRegular",
                                fontSize: 14,
                                color: CustomColors.black)),
                        SizedBox(
                          height: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.white,
                                  border: Border.all(
                                      width: 1, color: CustomColors.black)),
                              child: Row(
                                children: [
                                  Icon(
                                    EvaIcons.checkmarkCircle2,
                                    color: CustomColors.black,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("French",
                                      style: TextStyle(
                                          fontFamily: "PoppinsRegular",
                                          fontSize: 14,
                                          color: CustomColors.black)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Italian",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.whiteShade,
                                  border: Border.all(
                                      width: 1, color: CustomColors.white)),
                              child: Text("Mexican",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      fontSize: 14,
                                      color: CustomColors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColors.white,
                                  border: Border.all(
                                      width: 1, color: CustomColors.black)),
                              child: Row(
                                children: [
                                  Icon(
                                    EvaIcons.checkmarkCircle2,
                                    color: CustomColors.black,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Caribbean",
                                      style: TextStyle(
                                          fontFamily: "PoppinsRegular",
                                          fontSize: 14,
                                          color: CustomColors.black)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Will you bring/utilize your own cooking equipment/tools?",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "PoppinsRegular",
                              color: CustomColors.black),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 12, right: 8),
                          decoration: BoxDecoration(
                              color: CustomColors.whiteShade,
                              borderRadius: BorderRadius.circular(8)),
                          child: DropdownButton(
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "PoppinsRegular",
                                  color: CustomColors.white),
                              value: 1,
                              isExpanded: true,
                              underline: SizedBox(),
                              dropdownColor: CustomColors.white,
                              items: [
                                DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      "Yes",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "PoppinsRegular",
                                          color: CustomColors.black),
                                    )),
                                DropdownMenuItem(
                                    value: 2,
                                    child: Text(
                                      "No",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "PoppinsRegular",
                                          color: CustomColors.black),
                                    )),
                              ],
                              onChanged: (value) {}),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Will you offer food plating?",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "PoppinsRegular",
                              color: CustomColors.black),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 12, right: 8),
                          decoration: BoxDecoration(
                              color: CustomColors.whiteShade,
                              borderRadius: BorderRadius.circular(8)),
                          child: DropdownButton(
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "PoppinsRegular",
                                  color: CustomColors.white),
                              value: 1,
                              isExpanded: true,
                              underline: SizedBox(),
                              dropdownColor: CustomColors.white,
                              items: [
                                DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      "Yes",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "PoppinsRegular",
                                          color: CustomColors.black),
                                    )),
                                DropdownMenuItem(
                                    value: 2,
                                    child: Text(
                                      "No",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "PoppinsRegular",
                                          color: CustomColors.black),
                                    )),
                              ],
                              onChanged: (value) {}),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Will you have a team?",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "PoppinsRegular",
                              color: CustomColors.black),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 12, right: 8),
                          decoration: BoxDecoration(
                              color: CustomColors.whiteShade,
                              borderRadius: BorderRadius.circular(8)),
                          child: DropdownButton(
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "PoppinsRegular",
                                  color: CustomColors.white),
                              value: 1,
                              isExpanded: true,
                              underline: SizedBox(),
                              dropdownColor: CustomColors.white,
                              items: [
                                DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      "Yes",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "PoppinsRegular",
                                          color: CustomColors.black),
                                    )),
                                DropdownMenuItem(
                                    value: 2,
                                    child: Text(
                                      "No",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "PoppinsRegular",
                                          color: CustomColors.black),
                                    )),
                              ],
                              onChanged: (value) {}),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Legal Documents",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "PoppinsRegular",
                              color: CustomColors.black),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: CustomColors.whiteShade,
                            ),
                            child:
                                Center(child: Text("Upload your documents"))),
                        SizedBox(
                          height: 16,
                        ),
                        CustomButtonChef(
                          text: "SAVE",
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, CHEF_NEW_BOOKINGS_SCREEN);
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
