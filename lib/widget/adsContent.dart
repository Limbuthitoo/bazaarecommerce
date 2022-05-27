import 'package:bazaar/utili/appColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AdsContent extends StatelessWidget {
  final String content;
  final Image image;
  const AdsContent({
    required this.content,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width,
      height: 250,
      child: Stack(
        children: [
          Container(
            width: Get.size.width,
            height: Get.size.height,
            alignment: Alignment.topLeft,
            child: Container(
              width: 270,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.kPrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              content,
              style: TextStyle(
                color: AppColor.kLight,
                fontFamily: GoogleFonts.fredokaOne().fontFamily,
                fontSize: 35,
              ),
            ),
          ),
          Container(
            width: Get.size.width,
            height: Get.size.height,
            alignment: Alignment.centerRight,
            child: SizedBox(width: 250, height: 250, child: image),
          ),
        ],
      ),
    );
  }
}
