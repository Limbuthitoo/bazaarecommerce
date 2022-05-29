import 'package:bazaar/utili/appColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTextFormField extends StatefulWidget {
  final String hintText;
  final String labelText;

  final TextEditingController text;
  final TextInputType textInput;

  final bool obsecureText;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final EdgeInsetsGeometry btnHeight;
  final String? Function(String?) validate;

  const MyTextFormField({
    required this.validate,
    this.btnHeight = const EdgeInsets.symmetric(vertical: 30),
    this.hintText = "",
    this.labelText = "",
    this.prefixIcon = const Text(""),
    this.suffixIcon = const Text(""),
    this.textInput = TextInputType.name,
    this.obsecureText = false,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  final myController = TextEditingController().obs;
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
    return Column(
      children: [
        TextFormField(
          validator: widget.validate,
          controller: widget.text,
          obscureText: widget.obsecureText,
          decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.labelText,
            contentPadding: widget.btnHeight,
            errorBorder: InputBorder.none,
            errorStyle: TextStyle(
              decoration: TextDecoration.none,
              textBaseline: TextBaseline.alphabetic,
              fontSize: 12,
              height: 0.3,
            ),
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
    );
  }
}
