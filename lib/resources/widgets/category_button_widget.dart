import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/app/extensions.dart';
import '/resources/font_manager.dart';
import '/resources/values_manager.dart';

import '../color_manager.dart';

class CustomCategoryButton extends StatelessWidget {
  const CustomCategoryButton(
      {super.key,
      required this.title,
      required this.svgIconPath,
      required this.onTap});

  final VoidCallback onTap;
  final String title;
  final String svgIconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 28.w,
        height: 28.w,
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 10.sp,
                  offset: Offset(0, 1),
                  color: ColorManager.black.withOpacity(.1))
            ],
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(RadiusManager.small)),
        child: Stack(alignment: Alignment.center, children: [
          Transform.translate(
              offset: Offset(0, -10), child: SvgPicture.asset(svgIconPath)),
          Positioned(
              left: 0,
              bottom: 0,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeightManager.medium,
                    color: ColorManager.green),
              ))
        ]),
      ),
    );
  }
}
