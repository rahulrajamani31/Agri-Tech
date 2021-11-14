import 'package:agri_tech_app/drawer/crop_selection.dart';
import 'package:agri_tech_app/drawer/fertilizer.dart';
import 'package:agri_tech_app/drawer/insects.dart';
import 'package:agri_tech_app/drawer/irrigation.dart';
import 'package:agri_tech_app/drawer/motor.dart';
import 'package:agri_tech_app/drawer/soilcondition.dart';
import 'package:agri_tech_app/firstpage.dart';
import 'package:flutter/material.dart';

import 'drawer/animal monitor.dart';
import 'drawer/weather.dart';
import 'greeting.dart';
import 'loginpage.dart';

void main() {
  runApp(mainpage());
}

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          '/first': (_) => SplashScreen(),
          '/login': (_) => login_page(),
          '/firs': (_) => firstpage(),
          '/motor': (_) => motor(),
          '/irri': (_) => irrigation(),
          '/soilcon': (_) => soilcon(),
          '/insects': (_) => insects(),
          '/fertilizer': (_) => fertilizer(),
          '/weather': (_) => weather(),
          '/animal': (_) => animal(),
          '/insect': (_) => insects(),
          '/crop': (_) => cropsuggest(),
        });
  }
}
