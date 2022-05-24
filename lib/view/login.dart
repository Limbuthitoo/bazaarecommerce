// ignore: avoid_web_libraries_in_flutter

import 'package:bazaar/utili/appColor.dart';
import 'package:bazaar/view/forgot_password.dart';
import 'package:bazaar/view/signup.dart';
import 'package:bazaar/widget/MyButton.dart';
import 'package:bazaar/widget/heightSpace.dart';
import 'package:bazaar/widget/mytextformfield.dart';
import 'package:bazaar/widget/widgets.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          reverse: true,
          child: Stack(children: [
            SizedBox(
              height: Get.size.height,
              child: const LoginTopView(),
            ),
            Container(
              height: Get.size.height,
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: Get.size.height / 2.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.kLight,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        MyTextFormField(
                          btnHeight: const EdgeInsets.symmetric(vertical: 17),
                          hintText: "email",
                          labelText: "email",
                          textInput: TextInputType.emailAddress,
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppColor.kPrimary,
                          ),
                        ),
                        const HightSpace(),
                        MyTextFormField(
                          btnHeight: const EdgeInsets.symmetric(vertical: 17),
                          obsecureText: isVisible,
                          hintText: "Password",
                          labelText: "Password",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: AppColor.kPrimary,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              isVisible = !isVisible;
                              setState(() {});
                            },
                            icon: Icon(isVisible
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: AppColor.kPrimary,
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: SizedBox(
                                width: 200,
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    isDismissible: false,
                                    isScrollControlled: true,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(50)),
                                    ),
                                    context: context,
                                    builder: (context) => const ForgetView(),
                                  );
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: AppColor.kPrimary,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        MyButton(
                          width: Get.size.width,
                          height: 50,
                          elevation: 10,
                          text: Text(
                            "Sign In",
                            style: TextStyle(color: AppColor.kLight),
                          ),
                          onTap: () {
                            Get.to(() => const HomeView());
                          },
                          color: AppColor.kDark,
                          splashColor: AppColor.kSecondary,
                        ),
                        Row(
                          children: [
                            const Expanded(
                                child: SizedBox(
                              width: 250,
                            )),
                            const Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                Get.to(
                                  () => const SignUpView(),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: AppColor.kPrimary),
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
            ),
          ]),
        ),
      ),
    );
  }
}
