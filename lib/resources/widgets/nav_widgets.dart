import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app/extensions.dart';
import '/resources/font_manager.dart';
import '/resources/widgets/buttons_widget.dart';

import '../color_manager.dart';
import '../values_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, this.title, this.backgroundColor, this.foregroundColor});

  final Color? backgroundColor, foregroundColor;
  final String? title;

  const factory CustomAppBar.withAction({
    Color? backgroundColor,
    Color? foregroundColor,
    String? title,
    required VoidCallback onPressed,
    required IconData actionIcon,
  }) = _CustomAppBarWithAction;

  const factory CustomAppBar.withRadius(
      {required String title,
      Widget? action,
      Color? backgroundColor,
      Color? foregroundColor}) = _CustomAppBarWithRadius;

  @override
  Widget build(BuildContext context) {
    final navigateToPage = Navigator.of(context);
    return Container(
      height: AppSize.navHeight.h,
      width: 100.w,
      color: backgroundColor ?? ColorManager.lightGrey,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton.circularIcon(
                  size: 25.sp,
                  icon: Icons.arrow_back,
                  foregroundColor: foregroundColor,
                  onPressed: () {
                    navigateToPage;
                  }),
              title != null
                  ? Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.sp),
                        child: Text(
                          title!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: foregroundColor ?? ColorManager.green,
                              fontSize: 22.sp,
                              fontWeight: FontWeightManager.medium),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomAppBarWithAction extends CustomAppBar {
  const _CustomAppBarWithAction(
      {super.key,
      super.backgroundColor,
      super.foregroundColor,
      super.title,
      required this.onPressed,
      required this.actionIcon});

  final VoidCallback onPressed;
  final IconData actionIcon;

  @override
  Widget build(BuildContext context) {
    final navigateToPage = Navigator.of(context);
    return Container(
      height: AppSize.navHeight.h,
      width: 100.w,
      color: backgroundColor ?? ColorManager.lightGrey,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton.circularIcon(
                  icon: Icons.arrow_back,
                  size: 25.sp,
                  onPressed: () {
                   navigateToPage;
                  }),
              Text(
                'Orders Cart',
                style: TextStyle(
                    color: ColorManager.green,
                    fontSize: 22.sp,
                    fontWeight: FontWeightManager.medium),
              ),
              CustomButton.circularIcon(
                icon: Icons.delete,
                onPressed: () {},
                elevation: 0,
                size: 25.sp,
                backgroundColor: ColorManager.white,
                foregroundColor: ColorManager.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomAppBarWithRadius extends CustomAppBar {
  const _CustomAppBarWithRadius(
      {super.key,
      super.title,
      super.backgroundColor,
      super.foregroundColor,
      this.action});

  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final navigateToPage = Navigator.of(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Container(
      height: AppSize.navHeight.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: backgroundColor ?? ColorManager.green,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(RadiusManager.big.sp))),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton.circularIcon(
                  icon: Icons.arrow_back,
                  size: 25.sp,
                  onPressed: () {
                   navigateToPage;
                  }),
              Text(
                title ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeightManager.medium,
                    fontSize: 22.sp,
                    color: foregroundColor ?? ColorManager.white),
              ),
              action ?? Container()
            ],
          ),
        ),
      ),
    );
  }
}
