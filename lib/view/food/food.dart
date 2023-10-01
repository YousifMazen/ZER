import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/resources/base/custom_widgets.dart';
import 'package:sarwaran_pharmacy_sales/resources/color_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/values_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/input_widgets.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

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

    dynamic sp(int fontSize) {
      final media = MediaQuery.of(context).size.width;
      return ((media / 100) / 3.9) * fontSize;
    }

    final CustomWidgets page = CustomWidgets();

    page.appBar = AppBar(
      title: null,
      elevation: 0,
      backgroundColor: ColorManager.green,
      foregroundColor: ColorManager.white,
    );

    page.body = Container(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: TextField(
              style: const TextStyle(color: ColorManager.text),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: ColorManager.white,
                ),
                fillColor: ColorManager.green,
                filled: true,
                hintMaxLines: 1,
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: sp(14),
                  color: ColorManager.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(RadiusManager.small),
                  ),
                  child: Center(
                    child: Text(
                      'Food',
                      style: TextStyle(
                        fontSize: sp(30),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(RadiusManager.small),
                  ),
                  child: Center(
                    child: Text(
                      'Non-Food',
                      style: TextStyle(
                        fontSize: sp(30),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              physics: const BouncingScrollPhysics(),
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green[200],
                        ),
                      ),
                      Text('Product name {$index}')
                    ],
                  ),
                );
              },
            ),
          )
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
