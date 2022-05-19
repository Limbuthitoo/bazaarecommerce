import 'package:bazaar/view/signup.dart';
import 'package:bazaar/view/widget/mytextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utili/appColor.dart';
import 'widget/MyButton.dart';
import 'widget/heightSpace.dart';

class ForgetView extends StatefulWidget {
  const ForgetView({Key? key}) : super(key: key);

  @override
  State<ForgetView> createState() => _ForgetViewState();
}

class _ForgetViewState extends State<ForgetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: Get.size.height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("bAzAAr",
                  style: TextStyle(
                      color: AppColor.kPrimary,
                      fontSize: 40,
                      fontFamily: GoogleFonts.majorMonoDisplay().fontFamily,
                      fontWeight: FontWeight.bold)),
              const HightSpace(),
              const HightSpace(),
              Text(
                "Forgot Your Password?",
                style: TextStyle(
                    color: AppColor.kPrimary,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const HightSpace(),
              Text(
                "Enter the email address associated with your account and we will send you a link to reset your password.",
                style: TextStyle(
                  color: AppColor.kPrimary,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
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
              MyButton(
                onTap: () {},
                height: 80,
                width: Get.size.width,
                color: AppColor.kDark,
                splashColor: AppColor.kSecondary,
                text: const Text("Continue"),
              ),
              const SizedBox(
                height: 30,
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
                      Get.off(
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
    );
  }
}
