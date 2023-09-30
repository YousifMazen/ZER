import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/routes_manager.dart';
import 'package:sarwaran_pharmacy_sales/view/balance_page/balance_page.dart';
import 'package:sarwaran_pharmacy_sales/view/car%20stock/car_stock.dart';
import 'package:sarwaran_pharmacy_sales/view/home/home_page.dart';
import 'package:sarwaran_pharmacy_sales/view/orders_page/orders_page.dart';
import 'package:sarwaran_pharmacy_sales/view/returns/returns_page.dart';
import 'package:sarwaran_pharmacy_sales/view/signin/signin_page.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.signIn:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case RoutesManager.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RoutesManager.returns:
        return MaterialPageRoute(builder: (_) => const ReturnsPage());
      case RoutesManager.balance:
        return MaterialPageRoute(builder: (_) => const BalancePage());
      case RoutesManager.orders:
        return MaterialPageRoute(builder: (_) => const OrdersPage());
      case RoutesManager.carStock:
        return MaterialPageRoute(builder: (_) => const CarStockPage());
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
