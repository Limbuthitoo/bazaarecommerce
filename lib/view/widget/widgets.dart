import 'package:bazaar/view/forgot_password.dart';
import 'package:bazaar/view/signup.dart';
import 'package:bazaar/view/utili/appColor.dart';
import 'package:bazaar/view/widget/mybackground.dart';
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
            height: 200,
            width: 200,
            child: Card(
              elevation: 5,
              color: const Color.fromARGB(255, 233, 248, 233),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: SizedBox(
                height: 200,
                width: 200,
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
            width: 250,
            height: 265,
            alignment: Alignment.bottomCenter,
            // width: MediaQuery.of(context).size.width,
            child: Text(
              "bAzAAr",
              style: TextStyle(
                  fontFamily: GoogleFonts.majorMonoDisplay().fontFamily,
                  fontSize: 35,
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
          SizedBox(
            height: Get.size.height / 2,
            width: Get.size.width,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 90,
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
                          height: 75,
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


