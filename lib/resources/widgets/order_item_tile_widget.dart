import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/extensions.dart';

import '../color_manager.dart';
import '../font_manager.dart';
import '../values_manager.dart';
import 'buttons_widget.dart';

class CartItemTileWidget extends StatelessWidget {
  const CartItemTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.sp),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
          // border: Border.all(color: ColorManager.green),
          border: Border.all(
            color: ColorManager.black.withOpacity(.2),
            width: 1,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
          boxShadow: [
            BoxShadow(color: ColorManager.black.withOpacity(.1), blurRadius: 5)
          ],
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(RadiusManager.small)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Name',
                style: TextStyle(
                    fontSize: 15.sp, fontWeight: FontWeightManager.medium),
              ),
              SizedBox(height: 10.sp),
              Text('2,500 IQD'),
              SizedBox(
                  width: 20.w,
                  child: Divider(color: ColorManager.border, thickness: .8)),
              Text(
                'Total  5,000 IQD',
                style: TextStyle(
                    color: ColorManager.green,
                    fontSize: 15.sp,
                    fontWeight: FontWeightManager.medium),
              ),
            ]),
        Column(
          children: [
            CustomButton.circularIcon(
                backgroundColor: ColorManager.background,
                foregroundColor: ColorManager.black,
                size: 20.sp,
                icon: Icons.add,
                onPressed: () {}),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.sp),
              child: Text(
                '2',
                style: TextStyle(
                    fontSize: 15.sp, fontWeight: FontWeightManager.medium),
              ),
            ),
            CustomButton.circularIcon(
                backgroundColor: ColorManager.background,
                foregroundColor: ColorManager.black,
                size: 20.sp,
                icon: Icons.remove,
                onPressed: () {})
          ],
        ),
      ]),
    );
  }
}

class CartItemTileDisplayWidget extends StatefulWidget {
  CartItemTileDisplayWidget({super.key, this.selectable});

  bool? selectable = true;
  bool isDisabled = false;

  @override
  State<CartItemTileDisplayWidget> createState() =>
      _CartItemTileDisplayWidgetState();
}

class _CartItemTileDisplayWidgetState extends State<CartItemTileDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: () {
        if (widget.selectable != null || widget.selectable == false) return;

        setState(() {
          widget.isDisabled = !widget.isDisabled;
        });
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10.sp),
        padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 20.sp),
        decoration: BoxDecoration(
            // border: Border.all(color: ColorManager.green),
            border: Border.all(
              color: ColorManager.black.withOpacity(.2),
              width: 1,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            boxShadow: [
              BoxShadow(
                  color: ColorManager.black.withOpacity(.1), blurRadius: 5)
            ],
            color: widget.isDisabled ? ColorManager.background : ColorManager.white,
            borderRadius: BorderRadius.circular(RadiusManager.small)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Name',
                  style: TextStyle(
                      fontSize: 15.sp, fontWeight: FontWeightManager.medium),
                ),
                SizedBox(height: 10.sp),
                Text('2,500 IQD'),
                SizedBox(
                    width: 20.w,
                    child: Divider(color: ColorManager.border, thickness: .8)),
                Text(
                  'Total  5,000 IQD',
                  style: TextStyle(
                      color: ColorManager.green,
                      fontSize: 15.sp,
                      fontWeight: FontWeightManager.medium),
                ),
              ]),
          Container(
            padding: EdgeInsets.all(10.sp),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: ColorManager.background),
            child: Text(
              '2',
              style: TextStyle(
                  fontSize: 18.sp, fontWeight: FontWeightManager.medium),
            ),
          ),
        ]),
      ),
    );
  }
}
