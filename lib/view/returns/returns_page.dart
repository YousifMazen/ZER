import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/resources/base/custom_widgets.dart';
import 'package:sarwaran_pharmacy_sales/resources/color_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/values_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/bottom_navigation_widget.dart';

class ReturnsPage extends StatelessWidget {
  const ReturnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic heightPercentage(int height) {
      final media = MediaQuery.of(context).size.height;
      return media / 100 * height;
    }

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
      title: const Text('Returns'),
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorManager.white,
      foregroundColor: ColorManager.black,
    );

    page.body = Container(
        margin: const EdgeInsets.all(30),
        width: double.infinity,
        child: Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(173, 62, 62, 62),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(RadiusManager.small),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(bottom: 20),
                height: 90,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color(0xffF7F7F7),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.info_outline,
                            color: ColorManager.green,
                            size: AppSizeSP.icon,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                height: 10,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: ColorManager.border),
                                            right: BorderSide(
                                                color: ColorManager.border),
                                            left: BorderSide(
                                                color: ColorManager.border),
                                          ),
                                        ),
                                        child: const Center(
                                          child: FittedBox(
                                            child: Text('\$750'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: ColorManager.border),
                                          ),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('2:00 PM'),
                                                Text('1/1/2023'),
                                              ],
                                            ),
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
                                decoration: const BoxDecoration(
                                  border: Border(
                                    left:
                                        BorderSide(color: ColorManager.border),
                                  ),
                                ),
                                child: const Center(
                                    child:
                                        Text('Receipt number 222222222222222')),
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
        ));

    page.setBottomNavigationBar(const CustomAppBottomNavigationBar());

    return page.scaffold(
      context,
      hasButtonNavigation: true,
    );
  }
}
