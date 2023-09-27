import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sarwaran_pharmacy_sales/domain/navigation/navigation_service.dart';

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness.light,
      // statusBarBrightness:
      //     !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.light,
      // systemNavigationBarColor: Colors.black.withOpacity(.2),
      // systemNavigationBarDividerColor: Colors.transparent,
      // systemNavigationBarIconBrightness: Brightness.dark,
    ));

    var materialApp = const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZER',
      initialRoute: '/',
      onGenerateRoute: NavigationService.generateRoute,

      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     primary: const Color(0xFFFE5A01),
      //     // secondary: const Color(0xFFFFC107),
      //   ),
      //   fontFamily: 'Metropolis',
      // ),
    );

    return materialApp;
  }
}
