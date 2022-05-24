import 'package:bazaar/utili/appColor.dart';
import 'package:bazaar/widget/heightSpace.dart';
import 'package:bazaar/widget/mybackground.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

//Splash Background

//Loading
class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.size.width,
          alignment: Alignment.center,
          child: SizedBox(
            height: 130,
            width: 130,
            child: Card(
              elevation: 5,
              color: const Color.fromARGB(255, 233, 248, 233),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: SizedBox(
                height: 120,
                width: 120,
                child: Lottie.asset(
                  "assets/images/splash.json",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.bottomCenter,
            // width: MediaQuery.of(context).size.width,
            child: Text(
              "bAzAAr",
              style: TextStyle(
                  fontFamily: GoogleFonts.majorMonoDisplay().fontFamily,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColor.kLight),
            ),
          ),
        ),
      ],
    );
  }
}

//Login Top Details
class LoginTopView extends StatelessWidget {
  const LoginTopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          const HightSpace(),
          SizedBox(
            height: 400,
            width: Get.size.width,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 100,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: AppColor.kLight,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          height: 65,
                          width: Get.size.width,
                          child: Text(
                            "bAzAAr",
                            style: TextStyle(
                                fontFamily:
                                    GoogleFonts.majorMonoDisplay().fontFamily,
                                color: AppColor.kLight,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 350,
                    child: Lottie.asset("assets/images/loginA1.json"),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "Hello There,",
                      style: TextStyle(fontSize: 35, color: AppColor.kLight),
                    ),
                    subtitle: Text(
                      "Sign in with your data that you entered during your registration.",
                      style: TextStyle(fontSize: 18, color: AppColor.kLight),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Login Form


