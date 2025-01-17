// Created by Santosh G on 03/08/22.

import 'package:flutter/material.dart';
import 'package:real_estate_app/resources/strings/constants.dart';

class LocaleManager extends ChangeNotifier {
  LocaleManager({Locale? initialLocale}) : _locale = initialLocale ?? english;

  Locale _locale;

  Locale get locale => _locale;

  void updateLocale(Locale value) {
    _locale = value;
    notifyListeners();
  }

  static Locale english = const Locale.fromSubtags(
    languageCode: StringConstants.englishLanguageCode,
  );
}
