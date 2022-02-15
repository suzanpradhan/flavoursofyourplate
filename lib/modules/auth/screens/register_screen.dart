import 'package:flavourofyourpalette/configs/app_routes.dart';
import 'package:flavourofyourpalette/constants/custom_colors.dart';
import 'package:flavourofyourpalette/widgets/custom_button.dart';
import 'package:flavourofyourpalette/widgets/form_input.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, LOGIN_ROUTE);
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 18, color: CustomColors.grey),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 18, color: CustomColors.white),
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
                        "Create your account",
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
                      SizedBox(
                        height: 18,
                      ),
                      FormInput(
                        placeholder: "Confirm password",
                        obsecureText: true,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      CustomButton(
                        text: "REGISTER",
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
                            Navigator.pushNamed(context, REGISTER_CHEF_SCREEN);
                          },
                          child: Text(
                            "Signup as a Chef",
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
