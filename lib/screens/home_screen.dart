import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

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
          title: const Text(
            'Nombre de ruta',
          ),
          leading: const Icon(
            Icons.access_time,
          ),
          onTap: () {
            final route = MaterialPageRoute(
              builder: (context) => ListView1Screen(),
            );
            Navigator.of(context).pushNamed('card');
          },
        ),
        separatorBuilder: ((context, index) => const Divider()),
        itemCount: 10,
      ),
    );
  }
}
