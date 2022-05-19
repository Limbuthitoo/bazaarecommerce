import 'package:bazaar/view/login.dart';
import 'package:bazaar/view/signup.dart';
import 'package:bazaar/view/utili/appColor.dart';
import 'package:bazaar/view/widget/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'widget/mybackground.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: AppColor.kLight,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    height: Get.size.height,
                    width: Get.size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 250,
                          height: 200,
                          child: Lottie.asset(
                            "assets/images/welcome.json",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: Get.size.height / 2,
                          child: Text(
                            "bAzAAr",
                            style: TextStyle(
                              fontFamily:
                                  GoogleFonts.majorMonoDisplay().fontFamily,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: AppColor.kPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                BackgroundView(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome to Bazaar',
                            style: TextStyle(
                                fontFamily: GoogleFonts.raleway().fontFamily,
                                fontSize: 50,
                                color: AppColor.kLight),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Local bazaar experience in your mobile enjoy our service",
                            style:
                                TextStyle(fontSize: 18, color: AppColor.kLight),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: MyButton(
                                  elevation: 10,
                                  text: Text(
                                    "Sign In",
                                    style: TextStyle(color: AppColor.kDark),
                                  ),
                                  onTap: () {
                                    Get.to(() => const LoginView());
                                  },
                                  color: AppColor.kLight,
                                  splashColor: AppColor.kSecondary,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: MyButton(
                                  elevation: 10,
                                  text: Text(
                                    "Sign Up",
                                    style: TextStyle(color: AppColor.kDark),
                                  ),
                                  onTap: () {
                                    Get.to(() => const SignUpView());
                                  },
                                  color: AppColor.kLight,
                                  splashColor: AppColor.kSecondary,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
