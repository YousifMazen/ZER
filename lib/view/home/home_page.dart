import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/routes_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/base/custom_widgets.dart';
import 'package:sarwaran_pharmacy_sales/resources/color_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/font_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/values_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/bottom_navigation_widget.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/buttons_widget.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/input_widgets.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/search_navbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    dynamic heightPercentage(int height) {
      final media = MediaQuery.of(context).size.height;
      return media / 100 * height;
    }

    dynamic widthPercentage(int width) {
      final media = MediaQuery.of(context).size.width;
      return media / 100 * width;
    }

    dynamic sp(int fontSize) {
      final media = MediaQuery.of(context).size.width;
      return ((media / 100) / 3.9) * fontSize;
    }

    final CustomWidgets page = CustomWidgets();

    page.appBar = AppBar(
      title: const Text('Main Page'),
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorManager.white,
      foregroundColor: ColorManager.black,
    );

    page.body = Container(
      width: widthPercentage(100),
      height: heightPercentage(100),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: TextField(
              style: const TextStyle(color: ColorManager.text),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorManager.black.withOpacity(.5),
                ),
                fillColor: ColorManager.white,
                filled: true,
                hintMaxLines: 1,
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                    fontSize: sp(14), color: Colors.black.withOpacity(.5)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Daily target',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ),
                    Text(
                      '15',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: ColorManager.shadow,
                  minHeight: 7,
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('0'),
                    Text('7'),
                    Text('15'),
                  ],
                ),
                SizedBox(height: 20),
                Text('Scan symbol'),
                SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorManager.green,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      iconSize: 60,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: GridView(
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (MediaQuery.of(context).size.height / 380) / (MediaQuery.of(context).size.width / 480),
                crossAxisCount: 2,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: ColorManager.border,
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.refresh,
                              size: 20,
                            ),
                            Text('whatever'),
                          ],
                        ),
                      ),
                    ),
              ],
            ),
          ),
          Container(
            color: ColorManager.green,
            height: 60,
            width: double.infinity,
          )
        ],
      ),
    );

    page.setBottomNavigationBar(CustomAppBottomNavigationBar());

    return page.scaffold(
      context,
      hasButtonNavigation: true,
    );
  }
}
