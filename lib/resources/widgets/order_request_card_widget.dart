import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/extensions.dart';
import '../color_manager.dart';
import '../font_manager.dart';
import '../values_manager.dart';
import 'buttons_widget.dart';

class CustomOrderRequestCard extends StatelessWidget {
  const CustomOrderRequestCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final navigateToPage = Navigator.of(context);
    return Container(
      width: 100.w,
      // height: 20.h,

      padding: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 5, color: ColorManager.shadow)],
          borderRadius: BorderRadius.circular(RadiusManager.small),
          color: ColorManager.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sarkar Jabar',
            style: TextStyle(
                fontSize: 19.sp,
                color: ColorManager.green,
                fontWeight: FontWeightManager.medium),
          ),
          Divider(thickness: 1),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
              children: [
                Icon(Icons.location_on_rounded, color: ColorManager.green),
                SizedBox(width: 5.sp),
                Text(
                  '23421 Erbil Gulan',
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: ColorManager.text,
                      fontWeight: FontWeightManager.medium),
                ),
              ],
            ),
          ),
          Divider(thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order ID',
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: ColorManager.text,
                            fontWeight: FontWeightManager.medium),
                      ),
                      SizedBox(height: 5.sp),
                      Text(
                        '#eoi422343f3',
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: ColorManager.text,
                            fontWeight: FontWeightManager.medium),
                      )
                    ],
                  ),
                  SizedBox(
                      height: 3.h,
                      child: VerticalDivider(
                        thickness: .3,
                        width: 20,
                        color: ColorManager.black,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: ColorManager.text,
                            fontWeight: FontWeightManager.medium),
                      ),
                      SizedBox(height: 5.sp),
                      Text(
                        '48,000 IQD',
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: ColorManager.text,
                            fontWeight: FontWeightManager.medium),
                      )
                    ],
                  ),
                ],
              ),
              CustomButton(
                onPressed: () {
                  navigateToPage;
                },
                title: 'Details',
                textStyle: TextStyle(
                    fontSize: 20.sp, fontWeight: FontWeightManager.medium),
                padding: EdgeInsets.symmetric(horizontal: 10.sp),
              )
            ],
          )
        ],
      ),
    );
  }
}
