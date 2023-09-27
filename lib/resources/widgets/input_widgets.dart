import 'package:flutter/material.dart';
import '/app/extensions.dart';

import '../color_manager.dart';
import '../values_manager.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {super.key, required this.title, this.isObscure, this.fillColor});

  final String title;
  final bool? isObscure;
  final Color? fillColor;

  const factory CustomInputField.withIcon(
      {required String title,
      required IconData icon,
      bool? isObscure}) = _CustomInputFieldWithIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizeSP.inputHeight.sp,
      child: TextField(
        obscureText: isObscure ?? false,
        decoration: InputDecoration(
            fillColor: fillColor,
            filled: fillColor != null ? true : false,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.sp),
            hintText: title,
            focusColor: ColorManager.green,
            hintStyle: TextStyle(color: ColorManager.text.withOpacity(.8)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.border),
                borderRadius: BorderRadius.circular(RadiusManager.small)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.border),
                borderRadius: BorderRadius.circular(RadiusManager.small))),
      ),
    );
  }
}

class _CustomInputFieldWithIcon extends CustomInputField {
  const _CustomInputFieldWithIcon(
      {required super.title, required this.icon, super.isObscure});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizeSP.inputHeight.sp,
      child: TextField(
        style: TextStyle(color: ColorManager.text),
        obscureText: isObscure ?? false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.sp),
          prefixIcon: Icon(
            icon,
            color: ColorManager.black.withOpacity(.5),
          ),
          fillColor: fillColor ?? ColorManager.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusManager.small),
              borderSide: BorderSide(color: ColorManager.border)),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.border),
            borderRadius: BorderRadius.circular(RadiusManager.small),
          ),
          hintMaxLines: 1,
          hintText: title,
          hintStyle:
              TextStyle(fontSize: 14, color: Colors.black.withOpacity(.5)),
        ),
      ),
    );
  }
}
