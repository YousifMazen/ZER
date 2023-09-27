import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/routes_manager.dart';
import 'package:sarwaran_pharmacy_sales/view/signin/signin_page.dart';

class NavigationService {
    static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.signIn:
        return MaterialPageRoute(builder: (_) => SignInPage());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: SafeArea(
              child: Center(
                child: Text('Page not found!'),
              ),
            ),
          ),
        );
    }
  }
}
