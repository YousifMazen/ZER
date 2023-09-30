import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/routes_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/base/custom_widgets.dart';
import 'package:sarwaran_pharmacy_sales/resources/color_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/font_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/bottom_navigation_widget.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Row(
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
                const SizedBox(height: 10),
                const LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: ColorManager.shadow,
                  minHeight: 7,
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('0'),
                    Text('7'),
                    Text('15'),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Scan symbol'),
                const SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: const BoxDecoration(
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
                const SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(RoutesManager.returns),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    top: BorderSide(color: ColorManager.border),
                                    right:
                                        BorderSide(color: ColorManager.border),
                                    bottom:
                                        BorderSide(color: ColorManager.border),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.refresh,
                                      size: sp(80),
                                    ),
                                    Text(
                                      'Returns',
                                      style: TextStyle(
                                        fontSize: sp(25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Navigator.of(context).pushNamed(RoutesManager.orders),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    top: BorderSide(color: ColorManager.border),
                                    bottom:
                                        BorderSide(color: ColorManager.border),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.folder_copy_outlined,
                                      size: sp(80),
                                    ),
                                    Text(
                                      'Orders',
                                      style: TextStyle(
                                        fontSize: sp(25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(RoutesManager.balance),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    right:
                                        BorderSide(color: ColorManager.border),
                                    bottom:
                                        BorderSide(color: ColorManager.border),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.balance,
                                      size: sp(80),
                                    ),
                                    Text(
                                      'Balance',
                                      style: TextStyle(
                                        fontSize: sp(25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom:
                                        BorderSide(color: ColorManager.border),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.refresh,
                                      size: sp(80),
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontSize: sp(25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: ColorManager.green,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      color: ColorManager.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '00:00',
                      style: TextStyle(
                        color: ColorManager.white,
                        fontWeight: FontWeightManager.bold,
                        fontSize: sp(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );

    page.setBottomNavigationBar(const CustomAppBottomNavigationBar());

    return page.scaffold(
      context,
      hasButtonNavigation: true,
    );
  }
}
