import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/extensions.dart';
import 'package:sarwaran_pharmacy_sales/resources/base/custom_widgets.dart';
import 'package:sarwaran_pharmacy_sales/resources/color_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/font_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/values_manager.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/buttons_widget.dart';
import 'package:sarwaran_pharmacy_sales/resources/widgets/input_widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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

    final CustomWidgets page = CustomWidgets();

    page.body = Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: widthPercentage(100),
      height: heightPercentage(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: heightPercentage(10),
          ),
          const Text(
            'ZER',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Text(
            'Choose language',
            style: TextStyle(
              fontSize: FontSize.s15,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(RadiusManager.small),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.flag),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: ColorManager.shadow,
                  blurRadius: 10,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(RadiusManager.small),
            ),
            child: const Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mobile Number'),
                  CustomInputField(title: '07710000000'),
                  SizedBox(height: 20),
                  Text('Mobile Number'),
                  CustomInputField(title: '***********'),
                ],
              ),
            ),
          ),
          const Spacer(flex: 8),
          SizedBox(
            width: widthPercentage(90),
            child: CustomButton(
              title: 'Sign In',
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: widthPercentage(90),
            child: const Center(
              child: Text(
                'You have problem in account? Contact your admin',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: FontSize.s15,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Spacer(),
        ],
      ),
    );

    return page.scaffold(context);
  }
}
