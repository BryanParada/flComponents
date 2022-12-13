
import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';
  
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const AlertScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      //onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings), //==v
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData.light().copyWith(
        // Color primario
        primaryColor: Colors.indigo,

        // AppBar Theme:
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 89, 181, 235)
        )

      ),
    );
  }
}