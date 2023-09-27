import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app/extensions.dart';
import '/resources/assets_manager.dart';
import '/resources/font_manager.dart';
import '/resources/values_manager.dart';

import '../color_manager.dart';

class CustomItemWidget extends StatelessWidget {
  const CustomItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final navigateToPage = Navigator.of(context);
    return GestureDetector(
      onTap: () {
        HapticFeedback.heavyImpact();
        navigateToPage;
      },
      child: Wrap(
        children: [
          Container(
            width: 30.w,
            //  margin: EdgeInsets.only(right: 15.sp),
            padding: EdgeInsets.all(8.sp),
            decoration: BoxDecoration(
                color: ColorManager.background,
                borderRadius: BorderRadius.circular(RadiusManager.small)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 30.w,
                  height: 23.w,
                  padding: EdgeInsets.all(4.sp),
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(RadiusManager.small)),
                  child: Image.asset(
                    ImageAssets.otp,
                  ),
                ),
                SizedBox(height: 10.sp),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                Text(
                  'IQD 4,750',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: ColorManager.green,
                      fontWeight: FontWeightManager.medium),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
