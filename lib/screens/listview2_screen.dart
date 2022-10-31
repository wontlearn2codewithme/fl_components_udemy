import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final List<String> options = const [
    'Megaman',
    'Metal Gear',
    'Super smash',
    'Final Fantasy'
  ];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listview2',
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.person),
          title: Text(
            options[index],
          ),
          trailing: const Icon(
            Icons.arrow_forward,
            color: Colors.indigo,
          ),
          onTap: () {},
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
