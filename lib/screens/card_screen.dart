import 'package:flutter/material.dart';

import '../widgets/custom_card_type_2.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://images.pexels.com/photos/2246476/pexels-photo-2246476.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://t3.ftcdn.net/jpg/04/76/66/96/360_F_476669635_6P4H8yAayrbWwhHaJiwdntr5If6QNp2P.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://i.pinimg.com/originals/0a/4d/cb/0a4dcb92fa2d3c601b58d72720d6bec4.jpg',
            name: 'circulo fancy',
          ),
        ],
      ),
    );
  }
}
