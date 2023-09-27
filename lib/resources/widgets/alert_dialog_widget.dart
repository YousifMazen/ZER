import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/extensions.dart';

import '../color_manager.dart';
import '../font_manager.dart';
import '../values_manager.dart';
import 'buttons_widget.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.description,
    required this.btnTitle,
  });

  final String title, description;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusManager.small)),
        content: Container(
          width: 80.w,
          height: 20.h,
          decoration: BoxDecoration(
            color: ColorManager.white,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeightManager.medium,
                      color: ColorManager.red),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightManager.regular,
                      color: ColorManager.text),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30.w,
                      child: CustomButton(
                        backgroundColor: ColorManager.background,
                        foregroundColor: ColorManager.black,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        title: 'Close',
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    SizedBox(
                      width: 30.w,
                      child: CustomButton(
                          backgroundColor: ColorManager.red,
                          foregroundColor: ColorManager.white,
                          onPressed: () {},
                          title: btnTitle),
                    ),
                  ],
                )
              ]),
        ));
  }
}
