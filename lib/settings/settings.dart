// ignore_for_file: deprecated_member_use

import 'dart:ui' as ui;


final defaultLocale = ui.window.locale.languageCode;
const defaultLanguage = "ES";


String get defaultDeviceLanguage {
  String defLocale = defaultLocale;
  defLocale += '_$defaultLanguage';

  return defLocale;
}