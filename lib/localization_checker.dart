import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationChecker {
  static changeLanguge(BuildContext context) {
    Locale? currentLocal = EasyLocalization.of(context)!.currentLocale;
    if (currentLocal == const Locale('en', 'US')) {
      EasyLocalization.of(context)!.setLocale(const Locale('ru', 'RU'));
    } else if (currentLocal == const Locale('ru', 'RU')) {
      EasyLocalization.of(context)!.setLocale(const Locale('en', 'US'));
    } else {
      EasyLocalization.of(context)!.setLocale(const Locale('ar', 'AE'));
    }
  }
}

