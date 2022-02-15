import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: CustomColors.darkShade,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, ADD_BOOKING_SCREEN);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                          color: CustomColors.yellowRegular,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "HIRE NOW",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(
                  fontFamily: "PoppinsRegular",
                  color: CustomColors.grey,
                  fontSize: 14,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.grey),
                    child: Text(
                      "Appetizer",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.grey),
                    child: Text(
                      "Main course",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.grey),
                    child: Text(
                      "Dessert",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              height: 80,
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image2.jpg"))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
          ],
        ));
  }
}
