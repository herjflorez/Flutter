// ignore_for_file: deprecated_member_use

import 'dart:ui' as ui;

final defaultLocale = ui.window.locale.languageCode;
final defaultLanguage = "ES";


String get defaultDeviceLanguage {
  String defLocale = defaultLocale;
  if(defaultLanguage != null){
    defLocale += '_$defaultLanguage';
  }
  print(defaultLanguage);
  print(defaultLocale);
  return defLocale;
}