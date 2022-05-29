import 'package:bazaar/service/remote_service.dart';
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
  final name = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPw = TextEditingController();
  EdgeInsets formheight() => const EdgeInsets.symmetric(vertical: 17);
  bool isVisible = true;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  void dispose() {
    name.dispose(); // TODO: implement dispose
    email.dispose(); // TODO: implement dispose
    password.dispose(); // TODO: implement dispose
    confirmPw.dispose(); // TODO: implement dispose
    username.dispose(); // TODO: implement dispose
    super.dispose();
  }
  // ignore: prefer_typing_uninitialized_variables

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          reverse: false,
          child: Column(
            children: [
              Stack(
                children: [
                  Background(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 250,
                          width: Get.size.width,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
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
                                      alignment: Alignment.topLeft,
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
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Form(
                              key: _key,
                              child: Column(
                                children: [
                                  MyTextFormField(
                                    text: name,
                                    btnHeight: formheight(),
                                    hintText: "Full Name",
                                    labelText: "Full Name",
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: AppColor.kPrimary,
                                    ),
                                    textInput: TextInputType.name,
                                    validate: (value) => value!.isEmpty
                                        ? "Required Full Name"
                                        : null,
                                  ),
                                  const HightSpace(),
                                  MyTextFormField(
                                    text: username,
                                    btnHeight: formheight(),
                                    hintText: "Username",
                                    labelText: "Username",
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: AppColor.kPrimary,
                                    ),
                                    textInput: TextInputType.name,
                                    validate: (value) => value!.isEmpty
                                        ? "Required Username"
                                        : null,
                                  ),
                                  const HightSpace(),
                                  MyTextFormField(
                                    text: email,
                                    btnHeight: formheight(),
                                    hintText: "email",
                                    labelText: "email",
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: AppColor.kPrimary,
                                    ),
                                    textInput: TextInputType.emailAddress,
                                    validate: (value) => value!.isEmpty
                                        ? "Required email"
                                        : null,
                                  ),
                                  const HightSpace(),
                                  MyTextFormField(
                                    text: password,
                                    btnHeight: formheight(),
                                    hintText: "Password",
                                    labelText: "Password",
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: AppColor.kPrimary,
                                    ),
                                    obsecureText: true,
                                    validate: (value) => value!.isEmpty
                                        ? "Required Password"
                                        : null,
                                  ),
                                  const HightSpace(),
                                  MyTextFormField(
                                    text: confirmPw,
                                    btnHeight: formheight(),
                                    hintText: "Confirm Password",
                                    labelText: "Confirm Password",
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: AppColor.kPrimary,
                                    ),
                                    obsecureText: true,
                                    validate: (value) => value!.isEmpty
                                        ? "Required Password"
                                        : null,
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  MyButton(
                                    onTap: () {
                                      Map data = {
                                        "fullName": name.text,
                                        "email": email.text,
                                        "password": password.text,
                                      };
                                      if (password.text != confirmPw.text) {
                                        return Get.snackbar("Error",
                                            "Invalid email or password",
                                            snackPosition: SnackPosition.BOTTOM,
                                            backgroundColor: AppColor.kPrimary,
                                            colorText: AppColor.kLight);
                                      } else {
                                        BazarService.registerUser(data);
                                        Get.off(() => LoginView());
                                      }
                                      ;
                                    },
                                    height: 50,
                                    width: Get.size.width,
                                    color: AppColor.kDark,
                                    splashColor: AppColor.kSecondary,
                                    text: const Text("Sign Up"),
                                  ),
                                  HightSpace(),
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
                                          style: TextStyle(
                                              color: AppColor.kPrimary),
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
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
