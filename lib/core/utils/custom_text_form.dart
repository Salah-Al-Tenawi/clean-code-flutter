import 'package:cleanarchitecture/core/them/color_app.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:freelanc/core/themes/color_app.dart';

// ignore: must_be_immutable
class CustomTextformfild extends StatelessWidget {
  TextEditingController? controller;
  String? Function(String?)? validator;
  void Function(String)? onFieldSubmitted;
  String title;
  Icon? icon;
  Widget? suffix;
  bool? scureText;
  TextInputType? keyboardType;
  String? hint;
  double? height;
  double? width;
  double? marginHor;
  double? marginVer;

  CustomTextformfild({
    super.key,
    this.height,
    this.width,
    required this.title,
    this.controller,
    this.icon,
    this.suffix,
    this.onFieldSubmitted,
    this.validator,
    this.keyboardType,
    this.scureText,
    this.hint,
    this.marginVer,
    this.marginHor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.symmetric(
          horizontal: marginHor ?? 0, vertical: marginVer ?? 0),
      child: TextFormField(
        onFieldSubmitted: onFieldSubmitted,
        keyboardType: keyboardType,
        obscureText: scureText == null || scureText == false ? false : true,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
            hintText: hint,
            suffix: suffix,
            fillColor: MyColors.greyTextfildColor,
            labelText: title,
            labelStyle: const TextStyle(
              fontSize: 14,
              color: MyColors.blackColor,
            ),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            prefixIcon: icon),
      ),
    );
  }
}
