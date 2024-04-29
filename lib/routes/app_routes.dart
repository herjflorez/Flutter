import 'package:actividad_4_flutter/models/city.dart';
import 'package:actividad_4_flutter/routes/routes.dart';
import 'package:actividad_4_flutter/views/detail.dart';
import 'package:actividad_4_flutter/views/list.dart';
import 'package:actividad_4_flutter/views/login.dart';
import 'package:actividad_4_flutter/views/splash.dart';
import 'package:flutter/material.dart';


Map<String, Widget Function(BuildContext)> get appRoutes{
  return{
    Routes.splash: (context) =>  SplashPage(),
    Routes.login: (context) =>  Login(),
    Routes.list: (context) =>  ListPage(),
    Routes.detail: (context) {
      final city = ModalRoute.of(context)!.settings.arguments as City;
      return Detail(
        city: city,
      );
    },
    // Routes.list: (context) {
    //   final user = ModalRoute.of(context)!.settings.arguments as String;
    //   return ListPage(
    //     user: user,
    //   );
    // }
  };
}