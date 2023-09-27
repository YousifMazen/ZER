import 'package:flutter/material.dart';
import '/app/extensions.dart';
import '/resources/color_manager.dart';
import '/resources/values_manager.dart';
import '../font_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.title,
      required this.onPressed,
      this.backgroundColor,
      this.foregroundColor,
      this.elevation = .5,
      this.padding,
      this.textStyle,
      this.radius});

  final String? title;
  final VoidCallback onPressed;
  final Color? backgroundColor, foregroundColor;
  final TextStyle? textStyle;
  final double? elevation;
  final EdgeInsets? padding;
  final double? radius;
  final double verticalPadding = 12, horizontalPadding = 5;

  factory CustomButton.withIcon(
      {Key? key,
      required String title,
      TextStyle? style,
      required IconData icon,
      required VoidCallback onPressed,
      Color? backgroundColor,
      Color? foregroundColor,
      EdgeInsets? padding,
      bool? isRight,
      double? elevation}) = _CustomButtonWithIcon;

  factory CustomButton.circularIcon(
      {Key? key,
      required IconData icon,
      required VoidCallback onPressed,
      double? size,
      EdgeInsets? padding,
      Color? backgroundColor,
      Color? foregroundColor,
      double? elevation}) = _CustomCircularIconButton;

  factory CustomButton.selectable(
      {Key? key,
      required String title,
      required VoidCallback onPressed,
      bool? isSelected,
      TextStyle? textStyle,
      Color? selectedColor,
      double? radius,
      EdgeInsets? padding,
      Color? backgroundColor,
      Color? foregroundColor,
      double? elevation}) = _CustomButtonSelectable;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: padding ??
              EdgeInsets.symmetric(
                  vertical: verticalPadding.sp,
                  horizontal: horizontalPadding.sp),
          elevation: elevation,
          backgroundColor: backgroundColor ?? ColorManager.green,
          foregroundColor: foregroundColor ?? ColorManager.white,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(radius ?? RadiusManager.small))),
      child: FittedBox(
        child: Text(
          title!,
          style: textStyle ??
              TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeightManager.medium,
                  color: foregroundColor?.withOpacity(1) ??
                      ColorManager.white.withOpacity(1)),
        ),
      ),
    );
  }
}

class _CustomButtonWithIcon extends CustomButton {
  _CustomButtonWithIcon(
      {super.key,
      required this.icon,
      required super.title,
      this.style,
      required super.onPressed,
      super.padding,
      super.backgroundColor,
      super.foregroundColor,
      this.isRight,
      super.elevation})
      : assert(title != '' && title != null);

  final IconData icon;
  final TextStyle? style;
  final bool? isRight;

  @override
  Widget build(BuildContext context) {
    var children = [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.sp),
        child: Icon(icon),
      ),
      FittedBox(
        child: Text(
          title!,
          style: style ?? TextStyle(fontSize: 20.sp),
        ),
      ),
      SizedBox(width: 10.sp),
    ];

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        padding: padding ??
            EdgeInsets.symmetric(
                vertical: verticalPadding.sp, horizontal: horizontalPadding.sp),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusManager.small)),
        backgroundColor: backgroundColor ?? ColorManager.white,
        foregroundColor: foregroundColor ?? ColorManager.green,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.min,
          children: isRight ?? false ? children.reversed.toList() : children),
    );
  }
}

class _CustomButtonSelectable extends CustomButton {
  _CustomButtonSelectable(
      {super.key,
      required super.title,
      required super.onPressed,
      this.isSelected,
      this.selectedColor,
      this.textStyle,
      super.padding,
      super.radius,
      super.backgroundColor,
      super.foregroundColor,
      super.elevation})
      : assert(title != '' && title != null);

  bool? isSelected;
  Color? selectedColor;
  TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        padding: padding,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? RadiusManager.tiny)),
        backgroundColor: isSelected ?? false
            ? selectedColor ?? ColorManager.green
            : backgroundColor ?? ColorManager.white,
        foregroundColor: isSelected ?? false
            ? ColorManager.white
            : foregroundColor ?? ColorManager.text,
      ),
      child: FittedBox(
        child: Text(title!, style: textStyle),
      ),
    );
  }
}

class _CustomCircularIconButton extends CustomButton {
  _CustomCircularIconButton(
      {super.key,
      required this.icon,
      required super.onPressed,
      this.size,
      super.padding,
      super.backgroundColor,
      super.foregroundColor,
      super.elevation});

  final IconData icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: padding ?? EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: size != null
                ? Size(size! * 1.2, size! * 1.2)
                : Size(AppSizeSP.icon.sp, AppSizeSP.icon.sp),
            backgroundColor: backgroundColor ?? ColorManager.white,
            foregroundColor: foregroundColor ?? ColorManager.green,
            shape: CircleBorder(),
            elevation: elevation),
        child: Icon(
          icon,
          size: size ?? AppSizeSP.icon.sp * .7,
        ));
  }
}
