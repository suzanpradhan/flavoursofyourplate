import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({Key? key}) : super(key: key);

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
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 260,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/image1.jpeg"))),
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Garlic and Thyme Salmon",
                    style: Theme.of(context).textTheme.headline2,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "American • 3-course",
                    style: Theme.of(context).textTheme.bodyText2,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Availability",
                    style: Theme.of(context).textTheme.headline3,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: CustomColors.yellowRegular,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "02/04 - Monday",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: CustomColors.yellowRegular,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "02/05 - Tuesday",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: CustomColors.yellowRegular,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "02/08 - Friday",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "See more...",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Courses",
                    style: Theme.of(context).textTheme.headline3,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                    decoration: BoxDecoration(
                        color: CustomColors.darkShade,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Roasted Chicken Quarter",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          "APPETIZER",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          style: TextStyle(
                            fontFamily: "PoppinsRegular",
                            color: CustomColors.greyRegular,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                    decoration: BoxDecoration(
                        color: CustomColors.darkShade,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Roasted Chicken Quarter",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          "MAIN COURSE",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          style: TextStyle(
                            fontFamily: "PoppinsRegular",
                            color: CustomColors.greyRegular,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                    decoration: BoxDecoration(
                        color: CustomColors.darkShade,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Caramel Crunch Milkshake",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          "DESSERT",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: TextStyle(
                            fontFamily: "PoppinsRegular",
                            color: CustomColors.greyRegular,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Chef",
                    style: Theme.of(context).textTheme.headline3,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/image1.jpeg"))),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Edward Cisneros",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Row(
                            children: [
                              Icon(
                                EvaIcons.star,
                                size: 18,
                                color: Colors.redAccent,
                              ),
                              Icon(
                                EvaIcons.star,
                                size: 18,
                                color: Colors.redAccent,
                              ),
                              Icon(
                                EvaIcons.star,
                                size: 18,
                                color: Colors.redAccent,
                              ),
                              Icon(
                                EvaIcons.star,
                                size: 18,
                                color: Colors.redAccent,
                              ),
                              Icon(
                                EvaIcons.star,
                                size: 18,
                                color: Colors.redAccent,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      color: CustomColors.greyRegular,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, ADD_BOOKING_SCREEN);
                    },
                    text: "BOOK NOW",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
