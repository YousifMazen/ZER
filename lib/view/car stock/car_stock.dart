import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/resources/base/custom_widgets.dart';
import 'package:sarwaran_pharmacy_sales/resources/color_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/values_manager.dart';

class CarStockPage extends StatelessWidget {
  const CarStockPage({super.key});

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

    // dynamic sp(int fontSize) {
    //   final media = MediaQuery.of(context).size.width;
    //   return ((media / 100) / 3.9) * fontSize;
    // }

    final CustomWidgets page = CustomWidgets();

    page.appBar = AppBar(
      title: const Text('Car stock'),
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorManager.white,
      foregroundColor: ColorManager.black,
    );

    page.body = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusManager.small),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(173, 62, 62, 62),
                        width: 1,
                      ),
                    ),
                  ),
                  height: 100,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(RadiusManager.small),
                            color: ColorManager.background,
                          ),
                          margin: const EdgeInsets.all(6),
                          width: double.infinity,
                          child: const FittedBox(
                            child: Text(
                              'Lorem ipsum idk whatever',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                RadiusManager.small),
                                            color: ColorManager.background,
                                          ),
                                          margin: const EdgeInsets.all(4),
                                          child: const FittedBox(
                                            child: Text('Lorem'),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                RadiusManager.small),
                                            color: ColorManager.background,
                                          ),
                                          margin: const EdgeInsets.all(4),
                                          child: const FittedBox(
                                            child: Text('Ipsum'),
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
                                        child: Container(
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              FittedBox(
                                                child: Text('Ipsum'),
                                              ),
                                              SizedBox(height: 10),
                                              FittedBox(
                                                child: Text('Ipsum'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              FittedBox(
                                                child: Text('Lorem'),
                                              ),
                                              SizedBox(height: 10),
                                              FittedBox(
                                                child: Text('Lorem'),
                                              ),
                                            ],
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
                    ],
                  ),
                );
              },
            ),
          ),
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
