import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageChangeController with ChangeNotifier {
  Locale _appLocale = const Locale('en'); // Default locale is English
  Locale get appLocal => _appLocale;

  /// Sets the language and saves it to SharedPreferences
  Future<void> setLanguage(String languageCode) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    _appLocale = Locale(languageCode);
    await sp.setString('language_code', languageCode);
    notifyListeners();
  }

  /// Loads the saved language during app initialization
  Future<void> loadSavedLanguage() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String languageCode =
        sp.getString('language_code') ?? 'en'; // Default to English
    _appLocale = Locale(languageCode);
    notifyListeners();
  }
}
