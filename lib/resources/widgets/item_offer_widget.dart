import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app/extensions.dart';
import '/resources/font_manager.dart';

import '../assets_manager.dart';
import '../color_manager.dart';
import '../values_manager.dart';

class CustomItemWithOfferWidget extends StatelessWidget {
  const CustomItemWithOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.heavyImpact();
      },
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: 40.sp,
              child: Container(
                width: 20.sp,
                height: 20.sp,
                decoration: BoxDecoration(
                    color: ColorManager.black.withAlpha(200),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(RadiusManager.small))),
              )),
          Wrap(
            children: [
              Container(
                width: 30.w,
                padding: EdgeInsets.all(8.sp),
                margin: EdgeInsets.only(left: 10.sp),
                decoration: BoxDecoration(
                    color: ColorManager.background,
                    borderRadius: BorderRadius.circular(RadiusManager.small)),
                child: Column(children: [
                  Container(
                      width: 30.w,
                      height: 23.w,
                      padding: EdgeInsets.all(4.sp),
                      decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius: BorderRadius.circular(RadiusManager.small)),
                      child: Image.asset(
                        ImageAssets.otp,
                      )),
                  SizedBox(height: 10.sp),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Text(
                      //   '15 %',
                      //   style: TextStyle(
                      //       fontSize: 18.sp,
                      //       color: ColorManager.green,
                      //       fontWeight: FontWeightManager.bold),
                      // ),
                      Text(
                        'Product Name',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeightManager.medium,
                            color: ColorManager.text),
                      ),
                      Text(
                        'Brand Name',
                        style: TextStyle(
                            fontSize: 11.sp,
                            color: ColorManager.text.withOpacity(.7)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.sp),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'IQD 5,750',
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14.sp,
                            color: ColorManager.red.withOpacity(.6)),
                      ),
                      Text(
                        'IQD 4,750',
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: ColorManager.green,
                            fontWeight: FontWeightManager.medium),
                      )
                    ],
                  )
                ]),
              ),
            ],
          ),
          Positioned(
              left: 0,
              top: 25.sp,
              child: Container(
                  width: 40.sp,
                  height: 22.sp,
                  padding: EdgeInsets.all(5.sp),
                  child: FittedBox(
                      child: Text(
                    '${Random().nextInt(40) + 20}%',
                    style: TextStyle(
                        color: ColorManager.white,
                        fontWeight: FontWeightManager.bold),
                  )),
                  decoration: BoxDecoration(
                      color: ColorManager.green,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          RadiusManager.small,
                        ),
                      )))),
        ],
      ),
    );
  }
}
