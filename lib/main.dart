
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
    );
  }
}