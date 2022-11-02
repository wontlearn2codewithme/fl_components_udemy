import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COmponentes en flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(
            Approutes.menuOptions[index].name,
          ),
          leading: Icon(
            Approutes.menuOptions[index].icon,
            color: AppTheme.primaryColor,
          ),
          onTap: () {
            final route = MaterialPageRoute(
              builder: (context) => Approutes.menuOptions[index].screen,
            );
            Navigator.of(context).push(route);
          },
        ),
        separatorBuilder: ((context, index) => const Divider()),
        itemCount: Approutes.menuOptions.length,
      ),
    );
  }
}
