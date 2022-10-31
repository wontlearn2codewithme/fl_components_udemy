import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class Approutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      icon: Icons.home,
      name: 'Home Screen',
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'list view 1',
      screen: const ListView1Screen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list_alt,
      name: 'List view 2',
      screen: const ListView2Screen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_giftcard,
      name: 'Card Screen',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.alarm,
      name: 'Alert Screen',
      screen: const AlertScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const ListView1Screen(),
    'listview2': (context) => const ListView2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    );
  }
}
