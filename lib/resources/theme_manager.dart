// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:zer/app/resources/font_manager.dart';
// import 'package:zer/app/resources/values_manager.dart';

// import 'color_manager.dart';

// ThemeData get applicationTheme {
//   var outlineInputBorder = OutlineInputBorder(
//     borderRadius: BorderRadius.circular(RadiusSize.inputRadius),
//     // borderSide: BorderSide.none
//     borderSide: const BorderSide(
//       color: ColorManager.borderColor,
//     ),
//   );

//   return ThemeData(
//     primaryColor: ColorManager.primaryGreen,
//     appBarTheme: const AppBarTheme(
//       // color: Colors.white,
//       elevation: 0.0,
//       systemOverlayStyle: SystemUiOverlayStyle(
//         statusBarColor: Colors.white,
//         statusBarIconBrightness: Brightness.dark,
//       ),
//     ),
//     fontFamily: FontConstants.fontFamily,
//     elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//             textStyle: const TextStyle(fontSize: FontSize.s14),
//             shape: RoundedRectangleBorder(
//                 side:
//                     const BorderSide(color: ColorManager.borderColor, width: 1),
//                 borderRadius: BorderRadius.circular(RadiusSize.buttonRadius)),
//             foregroundColor: Colors.white,
//             backgroundColor: ColorManager.buttonColor,
//             elevation: 0)),
//     inputDecorationTheme: InputDecorationTheme(
//         focusedBorder: outlineInputBorder,
//         enabledBorder: outlineInputBorder,
//         hintStyle: const TextStyle(
//             color: ColorManager.inputLabelColor,
//             fontWeight: FontWeightManager.medium),
//         fillColor: ColorManager.inputFillColor,
//         filled: true),
//   );
// }

// ThemeData get blueApplicationTheme {
//   var outlineInputBorder = OutlineInputBorder(
//     borderRadius: BorderRadius.circular(RadiusSize.inputRadius),
//     // borderSide: BorderSide.none
//     borderSide: const BorderSide(
//       color: ColorManager.borderColor,
//     ),
//   );

//   return ThemeData(
//     primaryColor: ColorManager.primaryBlue,
//     appBarTheme: const AppBarTheme(
//       // color: Colors.white,
//       elevation: 0.0,
//       systemOverlayStyle: SystemUiOverlayStyle(
//         statusBarColor: Colors.white,
//         statusBarIconBrightness: Brightness.dark,
//       ),
//     ),
//     fontFamily: FontConstants.fontFamily,
//     elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//             textStyle: const TextStyle(fontSize: FontSize.s14),
//             shape: RoundedRectangleBorder(
//                 side:
//                     const BorderSide(color: ColorManager.borderColor, width: 1),
//                 borderRadius: BorderRadius.circular(RadiusSize.buttonRadius)),
//             foregroundColor: Colors.white,
//             backgroundColor: ColorManager.buttonColor,
//             elevation: 0)),
//     inputDecorationTheme: InputDecorationTheme(
//         focusedBorder: outlineInputBorder,
//         enabledBorder: outlineInputBorder,
//         hintStyle: const TextStyle(
//             color: ColorManager.inputLabelColor,
//             fontWeight: FontWeightManager.medium),
//         fillColor: ColorManager.inputFillColor,
//         filled: true),
//   );
// }
