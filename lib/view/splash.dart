import 'package:bazaar/view/homepage.dart';
import 'package:bazaar/view/welcome.dart';
import 'package:bazaar/widget/mybackground.dart';
import 'package:bazaar/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  checkAuth() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var id = preferences.getString("id");
    if (id != null) {
      Get.off(() => const HomeView());
    } else {
      Future.delayed(const Duration(seconds: 3), () {
        Get.off(() => const WelcomeView());
      });
    }
  }

  @override
  void initState() {
    super.initState();
    checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: Get.size.width,
                height: Get.size.height,
                child: Stack(
                  children: const [
                    Background(
                      child: SizedBox(),
                    ),
                    LoadingView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
