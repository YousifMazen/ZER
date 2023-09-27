import 'package:flutter/material.dart';
import '../domain/navigation/navigation_service.dart';

final media =
    MediaQuery.of(NavigationService.navigatorKey.currentState!.context);

extension ResponsiveDouble on num {
  get h => media.size.height / 100 * this;
  get w => media.size.width / 100 * this;
  get sp => toDouble(); // ((media.size.width / 100) / 3.9) * this;
}

final map = <String, String>{};

extension TextTranslation on String {
  get toLang {
    map[this] = this;
    return this;
  } // Text(data ?? '');
}
