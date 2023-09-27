
import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/extensions.dart';

import '../assets_manager.dart';
import '../color_manager.dart';
import '../font_manager.dart';
import '../values_manager.dart';
import 'buttons_widget.dart';

class OrderPersonInfoCardWidget extends StatelessWidget {
  const OrderPersonInfoCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    info(IconData icon, String text, String value) => Container(
          padding: EdgeInsets.symmetric(vertical: 10.sp),
          decoration: BoxDecoration(
            color: ColorManager.lightGrey,
            border: Border(
              bottom: BorderSide(color: ColorManager.border, width: .8),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: ColorManager.text.withOpacity(.6),
                ),
                SizedBox(width: 10.sp),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: ColorManager.text,
                      fontWeight: FontWeightManager.medium),
                ),
                SizedBox(width: 10.sp),
                Text(
                  value,
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: ColorManager.text,
                      fontWeight: FontWeightManager.medium),
                )
              ],
            ),
          ),
        );

    return Container(
      width: 100.w,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.only(top: 10.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusManager.small),
          border: Border.all(
              color: ColorManager.black.withOpacity(.1),
              width: 1,
              strokeAlign: BorderSide.strokeAlignOutside),
          boxShadow: [
            BoxShadow(color: ColorManager.black.withOpacity(.2), blurRadius: 7)
          ],
          color: ColorManager.white),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: ColorManager.black.withOpacity(.04),
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(175, 14, 12, 12),
                        strokeAlign: BorderSide.strokeAlignInside,
                        width: .3),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.numbers,
                          color: ColorManager.text.withOpacity(.8),
                        ),
                        SizedBox(width: 10.sp),
                        Text(
                          '2395l2f',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: ColorManager.text,
                              fontWeight: FontWeightManager.medium),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          color: ColorManager.text.withOpacity(.8),
                        ),
                        SizedBox(width: 10.sp),
                        Text(
                          '2:00 pm',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: ColorManager.text,
                              fontWeight: FontWeightManager.medium),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.sp),
                    decoration: BoxDecoration(
                      color: ColorManager.lightGrey,
                      border: Border(
                        bottom:
                            BorderSide(color: ColorManager.border, width: .8),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.perm_identity_outlined,
                                color: ColorManager.text.withOpacity(.6),
                              ),
                              SizedBox(width: 10.sp),
                              Text(
                                'Name',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: ColorManager.text,
                                    fontWeight: FontWeightManager.medium),
                              ),
                              SizedBox(width: 10.sp),
                              Text(
                                "#2398sa",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: ColorManager.text,
                                    fontWeight: FontWeightManager.medium),
                              )
                            ],
                          ),
                          CustomButton.circularIcon(
                              icon: Icons.perm_identity_sharp, onPressed: () {})
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.sp),
                    decoration: BoxDecoration(
                      color: ColorManager.lightGrey,
                      border: Border(
                        bottom:
                            BorderSide(color: ColorManager.border, width: .8),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.phone_android_rounded,
                                color: ColorManager.text.withOpacity(.6),
                              ),
                              SizedBox(width: 10.sp),
                              Text(
                                'Phone',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: ColorManager.text,
                                    fontWeight: FontWeightManager.medium),
                              ),
                              SizedBox(width: 10.sp),
                              Text(
                                "0750 758 0422",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: ColorManager.text,
                                    fontWeight: FontWeightManager.medium),
                              )
                            ],
                          ),
                          CustomButton.circularIcon(
                              icon: Icons.call, onPressed: () {})
                        ],
                      ),
                    ),
                  ),
                  info(Icons.calendar_month, 'Date', "23/3/2012"),
                ],
              ),
              Image.asset(
                ImageAssets.map,
                height: 20.h,
                width: 100.w,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
