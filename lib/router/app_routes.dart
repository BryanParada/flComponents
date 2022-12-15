

import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    
      //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
      MenuOption(route: 'listview1', name: 'Listview Type 1', screen: const Listview1Screen(), icon: Icons.list_alt),
      MenuOption(route: 'listview2', name: 'Listview Type 2', screen: const Listview2Screen(), icon: Icons.list),
      MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
      MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.card_giftcard),
      MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle),
      MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline),
      MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
      MenuOption(route: 'slider', name: 'Slider && Checks', screen: const SliderScreen(), icon: Icons.slideshow),
      ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });

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