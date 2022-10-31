import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: Approutes.initialRoute,
      routes: Approutes.routes,
      onGenerateRoute: Approutes.onGenerateRoute,
    );
  }
}