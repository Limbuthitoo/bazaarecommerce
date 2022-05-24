import 'package:bazaar/utili/appColor.dart';
import 'package:bazaar/view/login.dart';
import 'package:bazaar/widget/MyButton.dart';
import 'package:bazaar/widget/heightSpace.dart';
import 'package:bazaar/widget/mybackground.dart';
import 'package:bazaar/widget/mytextformfield.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isVisible = true;
  // ignore: prefer_typing_uninitialized_variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          children: [
            Stack(
              children: [
                Background(
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.size.height / 2,
                        width: Get.size.width,
                        child: Column(
                          children: [
                            Row(
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
                                              GoogleFonts.majorMonoDisplay()
                                                  .fontFamily,
                                          color: AppColor.kLight,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(
                                  "Sign up,",
                                  style: TextStyle(
                                      fontSize: 45, color: AppColor.kLight),
                                ),
                                subtitle: Text(
                                  "Enter your detail information to create an account in Bazaar.",
                                  style: TextStyle(
                                      fontSize: 18, color: AppColor.kLight),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: Get.size.height,
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: Get.size.height / 1.4,
                        decoration: BoxDecoration(
                          color: AppColor.kLight,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              const HightSpace(),
                              MyTextFormField(
                                  hintText: "Full Name",
                                  labelText: "Full Name",
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: AppColor.kPrimary,
                                  ),
                                  textInput: TextInputType.name),
                              const HightSpace(),
                              MyTextFormField(
                                  hintText: "email",
                                  labelText: "email",
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: AppColor.kPrimary,
                                  ),
                                  textInput: TextInputType.emailAddress),
                              const HightSpace(),
                              MyTextFormField(
                                hintText: "Password",
                                labelText: "Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: AppColor.kPrimary,
                                ),
                                obsecureText: true,
                              ),
                              const HightSpace(),
                              MyTextFormField(
                                hintText: "Confirm Password",
                                labelText: "Confirm Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: AppColor.kPrimary,
                                ),
                                obsecureText: true,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              MyButton(
                                onTap: () {},
                                height: 80,
                                width: Get.size.width,
                                color: AppColor.kDark,
                                splashColor: AppColor.kSecondary,
                                text: const Text("Sign Up"),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                      child: SizedBox(
                                    width: 250,
                                  )),
                                  const Text("Already have an account?"),
                                  TextButton(
                                    onPressed: () {
                                      Get.to(
                                        () => const LoginView(),
                                      );
                                    },
                                    child: Text(
                                      "Sign In",
                                      style:
                                          TextStyle(color: AppColor.kPrimary),
                                    ),
                                  ),
                                  const Expanded(
                                    child: SizedBox(
                                      width: 250,
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
          ],
        ),
      ),
    );
  }
}
