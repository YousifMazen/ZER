import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sarwaran_pharmacy_sales/app/extensions.dart';
import '../color_manager.dart';
import '../values_manager.dart';

enum NavigationPages { home, orders, profile, other }

class CustomAppBottomNavigationBar extends StatelessWidget {
  CustomAppBottomNavigationBar({super.key, required this.page});

  NavigationPages page;

  @override
  Widget build(BuildContext context) {
    final navigateToPage = Navigator.of(context);

    icon(IconData icon, VoidCallback onPressed, [bool? selected]) {
      return IconButton(
          splashColor: ColorManager.green,
          iconSize: 30.sp,
          color: selected ?? false
              ? ColorManager.green
              : ColorManager.black.withOpacity(.9),
          onPressed: onPressed,
          icon: Icon(
            icon,
          ));
    }

    print(page);

    return Container(
      height: 10.h,
      width: 100.w,
      color: ColorManager.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 100.w,
            height: 8.h,
            decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(RadiusManager.normal),
                    topRight: Radius.circular(RadiusManager.normal))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  icon(Icons.shopping_cart, () {
                    HapticFeedback.vibrate();
                    page = NavigationPages.orders;

                    navigateToPage;
                  }, page == NavigationPages.orders),
                  icon(Icons.home, () {
                    HapticFeedback.vibrate();
                    page = NavigationPages.home;
                    navigateToPage;
                  }, page == NavigationPages.home),
                  icon(Icons.account_circle_rounded, () {
                    HapticFeedback.vibrate();
                    page = NavigationPages.profile;
                    // NavigationService().navigateToRoute(Routes.profile);
                  }, page == NavigationPages.profile),
                ]),
          )
        ],
      ),
    );
  }
}
