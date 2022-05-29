import 'package:bazaar/utili/appColor.dart';
import 'package:bazaar/widget/adsContent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                AdsContent(
                  image:
                      const Image(image: AssetImage("assets/images/Shoe1.png")),
                  content: "20% OFF \non Men's \nShoe",
                  color: SliderColor.kSlide1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
