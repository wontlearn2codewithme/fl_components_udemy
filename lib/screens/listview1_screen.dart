import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final List<String> options = const [
    'Megaman',
    'Metal Gear',
    'Super smash',
    'Final Fantasy'
  ];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Listview1',
          ),
        ),
        body: ListView(
          children: [
            ...options.map(
              (option) => ListTile(
                leading: const Icon(Icons.access_alarm_outlined),
                title: Text(option),
                trailing: const Icon(Icons.arrow_forward_rounded),
              ),
            )
            // ListTile(
            //   leading: Icon(Icons.access_alarm_outlined),
            //   title: Text('hola mundo'),
            // )
          ],
        ));
  }
}
