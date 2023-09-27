import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app/extensions.dart';
import '../color_manager.dart';
import '../values_manager.dart';

class CustomWidgets {
  AppBar? appBar;
  Widget? body;
  Widget? _bottomNavigation;
  Color? _backgroundColor;

  CustomWidgets._private();
  static final _instance = CustomWidgets._private();
  factory CustomWidgets() => _instance;

  void setBottomNavigationBar(Widget navigationBar) =>
      _bottomNavigation = navigationBar;
  void setBackgroundColor(Color color) => _backgroundColor = color;

  Scaffold scaffold(
    BuildContext context, {
    SystemUiOverlayStyle? systemUiOverlayStyle,
    bool? hasButtonNavigation,
  }) {
    SystemChrome.setSystemUIOverlayStyle(
      systemUiOverlayStyle?.copyWith(statusBarColor: Colors.transparent) ??
          SystemUiOverlayStyle.light
              .copyWith(statusBarColor: Colors.transparent),
    );

    return Scaffold(
        backgroundColor: _backgroundColor ?? ColorManager.background,
        appBar: appBar,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: body ?? const Placeholder(),
        ),
        bottomNavigationBar:
            hasButtonNavigation ?? false ? _bottomNavigation : null);
  }
}

class CustomDropdownButton<T> extends StatelessWidget {
  const CustomDropdownButton(
      {super.key,
      this.onChanged,
      required this.items,
      required this.hint,
      this.decoration});

  final void Function(T? value)? onChanged;
  final List<T> items;
  final String hint;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 0),
        decoration: decoration ??
            BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(RadiusManager.small),
                border: Border.all(color: ColorManager.border)),
        child: DropdownButton<T>(
          onChanged: onChanged,
          items: items
              .map((e) => DropdownMenuItem(child: Text(e.toString()), value: e))
              .toList(),
          hint: Text(hint),
          underline: Container(),
          icon: Icon(Icons.keyboard_arrow_down),
        ));
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.decoration,
      this.child});

  final double? width, height;
  final EdgeInsets? padding, margin;
  final BoxDecoration? decoration;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration ??
          BoxDecoration(
                  borderRadius: BorderRadius.circular(RadiusManager.normal.sp),
                  boxShadow: [
                    BoxShadow(color: ColorManager.shadow, blurRadius: 10.sp)
                  ],
                  color: ColorManager.white)
              .copyWith(),
      child: child,
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Theme.of(context).copyWith(
        colorScheme:
            ThemeData().colorScheme.copyWith(primary: ColorManager.green));
    return SizedBox(
        width: 100.w,
        // height: 10.h,
        child: TextField(
          onTap: onTap,
          cursorColor: ColorManager.green,
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.zero,
            prefixIconColor: MaterialStateColor.resolveWith(
              (states) => states.contains(MaterialState.focused)
                  ? ColorManager.green
                  : Colors.grey,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(RadiusManager.small),
                borderSide: BorderSide.none),
            fillColor: ColorManager.background,
            filled: true,
          ),
        ));
  }
}
