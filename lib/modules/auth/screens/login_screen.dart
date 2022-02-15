import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/widgets/custom_button.dart';
import 'package:flavourofyourpalette/widgets/form_input.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                          Text(
                            "FOYP",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Row(
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 18, color: CustomColors.white),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, REGISTER_ROUTE);
                                },
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      fontSize: 18, color: CustomColors.grey),
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
                      Text(
                        "Login into your account",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      FormInput(
                        placeholder: "Email",
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      FormInput(
                        placeholder: "Password",
                        obsecureText: true,
                      ),
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
                      CustomButton(
                        text: "LOGIN",
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, HOMEPAGE_ROUTE);
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
                            Navigator.pushNamed(context, LOGIN_CHEF_SCREEN);
                          },
                          child: Text(
                            "Login as a Chef",
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
