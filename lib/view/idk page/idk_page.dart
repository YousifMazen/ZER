import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/resources/base/custom_widgets.dart';
import 'package:sarwaran_pharmacy_sales/resources/color_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/buttons_widget.dart';

class IdkPage extends StatelessWidget {
  const IdkPage({super.key});

  @override
  Widget build(BuildContext context) {
    // dynamic heightPercentage(int height) {
    //   final media = MediaQuery.of(context).size.height;
    //   return media / 100 * height;
    // }

    // dynamic widthPercentage(int width) {
    //   final media = MediaQuery.of(context).size.width;
    //   return media / 100 * width;
    // }

    dynamic sp(int fontSize) {
      final media = MediaQuery.of(context).size.width;
      return ((media / 100) / 3.9) * fontSize;
    }

    final CustomWidgets page = CustomWidgets();

    page.appBar = AppBar(
      title: const Text('Karfour'),
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorManager.white,
      foregroundColor: ColorManager.black,
    );

    page.body = Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 10),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onPressed: () {},
                        title: 'Whatever',
                        backgroundColor: ColorManager.white,
                        foregroundColor: ColorManager.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomButton(
                        onPressed: () {},
                        title: 'Whatever',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomButton(
                        onPressed: () {},
                        title: 'Whatever',
                        backgroundColor: ColorManager.white,
                        foregroundColor: ColorManager.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 70),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          const Spacer(),
           ],
      ),
    );
    // page.setBottomNavigationBar(const CustomAppBottomNavigationBar());

    return page.scaffold(
      context,
      hasButtonNavigation: true,
    );
  }
}
