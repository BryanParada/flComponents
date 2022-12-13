

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255, 125, 110, 212);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Color primario
        primaryColor: Colors.indigo,

        // AppBar Theme:
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 4
        )

      );

    static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: const Color.fromARGB(255, 39, 48, 99),

    // AppBar Theme:
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 4
    ), 
    scaffoldBackgroundColor: Colors.black

  );

}