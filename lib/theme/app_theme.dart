

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Color primario
        primaryColor: Colors.indigo,

        // AppBar Theme:
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 4
        ),

        //TextButton Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary,)
        ),

        //FloatingActionButtons
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 1,  
        ),

        //ElevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 0
          ),
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
    scaffoldBackgroundColor: Colors.black,
 
     //FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //backgroundColor: primary,
      elevation: 1,
      backgroundColor: Colors.red,
    )

  );



}