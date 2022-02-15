import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/widgets/custom_button.dart';
import 'package:flavourofyourpalette/widgets/form_input.dart';
import 'package:flutter/material.dart';

class LoginChefScreen extends StatelessWidget {
  const LoginChefScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SingleChildScrollView(
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
                          Text("FOYP - CHEF",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.black,
                                  fontFamily: "PoppinsBold")),
                          Row(
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                    fontFamily: "PoppinsRegular",
                                    fontSize: 18,
                                    color: CustomColors.black),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, REGISTER_CHEF_SCREEN);
                                },
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: CustomColors.greyRegular),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        height: 52,
                      ),
                      Text("Login into your account",
                          style: TextStyle(
                              fontSize: 18,
                              color: CustomColors.black,
                              fontFamily: "PoppinsBold")),
                      SizedBox(
                        height: 24,
                      ),
                      FormInput(
                          placeholder: "Email",
                          backgroundColor: CustomColors.white,
                          textStyle: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 14,
                              color: CustomColors.black)),
                      SizedBox(
                        height: 16,
                      ),
                      FormInput(
                          placeholder: "Password",
                          obsecureText: true,
                          backgroundColor: CustomColors.white,
                          textStyle: TextStyle(
                              fontFamily: "PoppinsRegular",
                              fontSize: 14,
                              color: CustomColors.black)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Forget Password?",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ),
                      ),
                      CustomButtonChef(
                        text: "LOGIN",
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, CHEF_NEW_BOOKINGS_SCREEN);
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Center(
                        child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          onTap: () {
                            Navigator.pushNamed(context, LOGIN_ROUTE);
                          },
                          child: Text(
                            "Login as a Customer",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      "Terms and conditions",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
