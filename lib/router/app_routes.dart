

import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
      MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
      MenuOption(route: 'listview1', name: 'Listview Type 1', screen: const Listview1Screen(), icon: Icons.list_alt),
      MenuOption(route: 'listview2', name: 'Listview Type 2', screen: const Listview2Screen(), icon: Icons.list),
      MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
      MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.card_giftcard),
      ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions){
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }

// static Map<String, Widget Function(BuildContext)> routes = {

//         'home'        :(BuildContext context) => const HomeScreen(), 
//         'listview1'   :(BuildContext context) => const Listview1Screen(), 
//         'listview2'   :(BuildContext context) => const Listview2Screen(), 
//         'card'        :(BuildContext context) => const CardScreen(), 
//         'alert'       :(BuildContext context) => const AlertScreen(), 

// };

static Route<dynamic> onGenerateRoute( RouteSettings settings) { 
        return  MaterialPageRoute(
               builder: (context) => const AlertScreen()
        );
      }
 
}