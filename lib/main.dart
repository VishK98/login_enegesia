// import 'dart:html';
// import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:login_energasia/src/view/screen/fourth_screen.dart';
//import 'package:login_energasia/src/view/screen/home_screen.dart';
//import 'package:login_energasia/src/view/screen/login_screen.dart';
import 'package:login_energasia/src/view/screen/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) =>const SplashScreen(),
      //   '/login': (context) => LoginScreen(),
      //   '/dashboard' : (context) => const HomeScreen(),
      //   '/fourth' : (context) => const FourthScreen(),
      // },

      home: SplashScreen(),
    );
  }
}






