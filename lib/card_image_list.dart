import 'package:flutter/material.dart';
import 'card_image.dart';
class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child:ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/card1.jpg"),
          CardImage("assets/img/card2.jpg"),
          CardImage("assets/img/card3.jpg"),
          CardImage("assets/img/card4.jpg"),
          CardImage("assets/img/card5.jpg"),
        ],
      )
    );
  }

}