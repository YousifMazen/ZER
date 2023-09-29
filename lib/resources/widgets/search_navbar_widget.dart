import 'package:flutter/material.dart';
import '/resources/base/custom_widgets.dart';
import '/app/extensions.dart';
import '/resources/values_manager.dart';
import '/resources/widgets/buttons_widget.dart';

class CustomCategoryNavBarWidget extends StatelessWidget {
  const CustomCategoryNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final navigateToPage = Navigator.of(context);
    return SizedBox(
      height: AppSize.navHeight.h,
      width: 100.w,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton.circularIcon(
                      icon: Icons.arrow_back,
                      onPressed: () {
                        navigateToPage;
                      }),
                  SizedBox(width: 10.sp),
                  const Expanded(child: CustomSearchBar())
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
