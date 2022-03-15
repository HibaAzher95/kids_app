import 'package:flutter/material.dart';
import 'package:kids_app/AniPage.dart';
import 'package:kids_app/ClothesPage.dart';
import 'package:kids_app/ColorPage.dart';
import 'package:kids_app/FirstPage.dart';
import 'package:kids_app/FoodPage.dart';
import 'package:kids_app/HomePage.dart';
import 'package:kids_app/LettPage.dart';
import 'package:kids_app/NumPage.dart';
import 'package:kids_app/OtherPage.dart';
import 'package:kids_app/ShaPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kids Learn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cooper',

      primarySwatch: const MaterialColor(0x007A2969, {
      50: Color.fromRGBO(122, 41, 105, .1),
      100: Color.fromRGBO(122, 41, 105, .2),
      200: Color.fromRGBO(122, 41, 105, .3),
      300: Color.fromRGBO(122, 41, 105, .4),
      400: Color.fromRGBO(122, 41, 105, .5),
      500: Color.fromRGBO(122, 41, 105, .6),
      600: Color.fromRGBO(122, 41, 105, .7),
      700: Color.fromRGBO(122, 41, 105, .8),
      800: Color.fromRGBO(122, 41, 105, .9),
      900: Color.fromRGBO(122, 41, 105, 1),
      }),
      ),

      initialRoute: '/FirstPage',
      routes: {
        '/FirstPage':(context) => const FirstPage(),
        '/HomePage':(context) => const HomePage(),
        '/NumPage':(context) => const NumPage(),
        '/LettPage':(context) => const LettPage(),
        '/AniPage':(context) => const AniPage(),
        '/ShaPage':(context) => const ShaPage(),
        '/ColorPage':(context) => const ColorPage(),
        '/FoodPage':(context) => const FoodPage(),
        '/ClothesPage':(context) => const ClothesPage(),
        '/OtherPage':(context) => const OtherPage(),
      },
    );
  }
}