import 'package:bazaar/utili/appColor.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  final String hintText;
  final String labelText;

  final TextInputType textInput;
  final double elevation;
  final bool obsecureText;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final EdgeInsetsGeometry btnHeight;

  const MyTextFormField({
    this.elevation = 10,
    this.btnHeight = const EdgeInsets.symmetric(vertical: 30),
    this.hintText = "",
    this.labelText = "",
    this.prefixIcon = const Text(""),
    this.suffixIcon = const Text(""),
    this.textInput = TextInputType.name,
    this.obsecureText = false,
    Key? key,
  }) : super(key: key);

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  //Change Value here.
  BorderRadius borderRadius() => BorderRadius.circular(50);

  OutlineInputBorder borderOutline() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColor.kPrimary,
        width: 2,
      ),
      borderRadius: borderRadius(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.elevation,
      // clipBehavior: Clip.antiAlias,
      shadowColor: AppColor.kPrimary,
      borderRadius: borderRadius(),
      child: Column(
        children: [
          TextFormField(
            obscureText: widget.obsecureText,
            decoration: InputDecoration(
              hintText: widget.hintText,
              labelText: widget.labelText,
              contentPadding: widget.btnHeight,
              hintStyle: TextStyle(color: AppColor.kPrimary),
              labelStyle: TextStyle(color: AppColor.kPrimary),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              focusedBorder: borderOutline(),
              enabledBorder: borderOutline(),
            ),
            keyboardType: widget.textInput,
          ),
        ],
      ),
    );
  }
}
