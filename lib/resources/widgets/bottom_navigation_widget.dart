import 'package:flutter/material.dart';
import 'package:sarwaran_pharmacy_sales/app/routes_manager.dart';

class CustomAppBottomNavigationBar extends StatefulWidget {
  const CustomAppBottomNavigationBar({super.key});

  @override
  State<CustomAppBottomNavigationBar> createState() =>
      _CustomAppBottomNavigationBarState();
}

class _CustomAppBottomNavigationBarState
    extends State<CustomAppBottomNavigationBar> {
  int _selectedIndex = 2;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.of(context).pushNamed(RoutesManager.home);
      } else if (index == 1) {
        Navigator.of(context).pushNamed(RoutesManager.carStock);
      } else if (index == 2) {
        Navigator.of(context).pushNamed(RoutesManager.home);
      } else if (index == 3) {
        Navigator.of(context).pushNamed(RoutesManager.home);
      } else if (index == 4) {
        Navigator.of(context).pushNamed(RoutesManager.signIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _navigateBottomBar,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fire_truck_sharp),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: '',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(null),
        //   label: 'None',
        // ),
      ],
    );
  }
}
