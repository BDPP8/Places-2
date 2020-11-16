import 'package:flutter/material.dart';

import 'card_images.dart';
class CardImagesList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final cardImagesList = Container(
      height: 320,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImages("assets/images/bolivia.jpg"),
          CardImages("assets/images/deber.jpg"),
          CardImages("assets/images/dia.jpg"),
          CardImages("assets/images/opinion.jpg"),
          CardImages("assets/images/razon.jpg"),
          CardImages("assets/images/tiempos.jpg"),
        ],
      ),
    );
    return cardImagesList;
  }

}