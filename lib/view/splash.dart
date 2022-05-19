import 'package:bazaar/view/widget/widgets.dart';
import 'package:bazaar/view/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/mybackground.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const WelcomeView(),
      //   ),
      // );
      Get.off(() => const WelcomeView());
    });
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
