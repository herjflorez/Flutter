import 'package:actividad_4_flutter/routes/app_routes.dart';
import 'package:actividad_4_flutter/routes/routes.dart';
import 'package:actividad_4_flutter/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';

void main() {
  Intl.defaultLocale = defaultDeviceLanguage;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State createState() => MyAppState();
}

class MyAppState extends State {

  late Locale _locale;
  Locale get locale => _locale;

  final _supportedLocales = const [
    Locale('es','ES'),
    Locale('en','US'),
  ];

  @override
  void initState() {
    super.initState();

    _locale = Locale(defaultLocale, defaultLanguage);
  }

  void changeLanguage(Locale locale){
    setState(() {
      _locale = locale;
      Intl.defaultLocale = locale.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Henando Florez",
      localizationsDelegates: const[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: _supportedLocales,
      locale: _locale,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
      ),
      routes: appRoutes,
      initialRoute: Routes.splash,
    );
  }
}


List<Widget> languageSelector(BuildContext context) {
  final appState = context.findAncestorStateOfType<MyAppState>();
  return [
    DropdownButton(
      value: appState?.locale,  
      icon: const Icon(Icons.language),
      items: const [
        DropdownMenuItem(
          value: Locale('en', 'US'),
          child: Text("Ingles"),
        ),
        DropdownMenuItem(
          value: Locale('es', 'ES'),
          child: Text("Español")
        )
      ],

      onChanged: (locale) {
        if(locale != null) {
          appState?.changeLanguage(locale);
        }
      },
    )
  ];
}