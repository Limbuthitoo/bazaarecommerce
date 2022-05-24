import 'package:bazaar/utili/appColor.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget text;

  final Function() onTap;
  final double elevation;
  final Color color;
  final Color splashColor;
  final double height;
  final double width;
  const MyButton({
    required this.text,
    required this.onTap,
    this.elevation = 5,
    required this.color,
    required this.splashColor,
    this.height = 70,
    this.width = 150,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      clipBehavior: Clip.antiAlias,
      textStyle: TextStyle(
        fontSize: 17,
        color: AppColor.kLight,
      ),
      child: InkWell(
        onTap: onTap,
        splashColor: splashColor,
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          child: text,
        ),
      ),
    );
  }
}
