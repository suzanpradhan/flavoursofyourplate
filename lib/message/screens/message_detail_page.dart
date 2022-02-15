import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MessageDetailPage extends StatelessWidget {
  const MessageDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darkShade,
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
        title: Text(
          "Nathan Fertig",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 18),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              reverse: true,
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            color: CustomColors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Duis aute irure dolor in reprehenderit",
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        constraints: BoxConstraints(minWidth: 0),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            color: CustomColors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "At vero eos et accusamus et iusto odio dignissimos",
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/profile_image.png"))),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: CustomColors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimu",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: CustomColors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "Quis autem vel eum iure reprehenderit",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            color: CustomColors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "At vero eos et accusamus et iusto odio dignissimos",
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/profile_image.png"))),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: CustomColors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "cumque nihil impedit quo",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            color: CustomColors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Duis aute irure dolor in reprehenderit",
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            color: CustomColors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "At vero eos et accusamus et iusto odio dignissimos",
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/profile_image.png"))),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: CustomColors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimu",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: CustomColors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "Quis autem vel eum iure reprehenderit",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            color: CustomColors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "At vero eos et accusamus et iusto odio dignissimos",
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/profile_image.png"))),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: CustomColors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "cumque nihil impedit quo",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                )
              ],
            )),
            Container(
              decoration: BoxDecoration(
                color: CustomColors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type something here...",
                          hintStyle: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 14,
                              color: CustomColors.greyRegular)),
                      style: TextStyle(
                          color: CustomColors.white,
                          fontSize: 14,
                          fontFamily: "PoppinsRegular"),
                    ),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        EvaIcons.plus,
                        color: CustomColors.white,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
