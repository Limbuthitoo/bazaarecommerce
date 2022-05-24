import 'package:bazaar/utili/appColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackgroundView extends StatefulWidget {
  final Widget child;
  const BackgroundView({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  State<BackgroundView> createState() => _BackgroundViewState();
}

class _BackgroundViewState extends State<BackgroundView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width,
      height: Get.size.height,
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Container(
          // width: MediaQuery.of(context).size.width,
          height: Get.size.height / 2,
          decoration: BoxDecoration(
            gradient:
                RadialGradient(center: Alignment.center, radius: 1, colors: [
              AppColor.kBgOne,
              AppColor.kBgTwo,
            ]),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(center: Alignment.center, radius: 1, colors: [
          AppColor.kBgOne,
          AppColor.kBgTwo,
        ]),
      ),
      height: Get.size.height,
      width: Get.size.width,
      child: child,
    );
  }
}
