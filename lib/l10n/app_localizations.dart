
import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  static const _localizedValues = {
    'ar': {
      'home': 'الرئيسية',
      'live': 'البث المباشر',
      'movies': 'الأفلام',
      'settings': 'الإعدادات',
      'favorites': 'المفضلة',
    },
    'fr': {
      'home': 'Accueil',
      'live': 'Direct',
      'movies': 'Films',
      'settings': 'Paramètres',
      'favorites': 'Favoris',
    }
  };

  String t(String key) =>
      _localizedValues[locale.languageCode]![key] ?? key;
}
