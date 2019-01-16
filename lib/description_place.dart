import 'package:flutter/material.dart';
import 'button_purple.dart';
class DescriptionPlace extends StatelessWidget {
  String description, namePlace;
  int stars;
  DescriptionPlace(this.namePlace, this.description, this.stars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container(
      margin: EdgeInsets.only(top: 333.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(top: 333.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );
    final starBorder = Container(
      margin: EdgeInsets.only(top: 333.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final description=Container(
      margin: EdgeInsets.only(
        top:20,
        left:20.0,
        right:20.0,
      ),
      child: new Text(this.description,
      style: const  TextStyle(
          fontSize:16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black
      )),
    );

    final titleStar = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 330, left: 20.0, right: 20.0),
        child: Text(
          this.namePlace,
          style: TextStyle(fontFamily: "Lato",fontSize: 30.0, fontWeight: FontWeight.w900),
          textAlign: TextAlign.left,
        ),
      ),
      Row(
        children: <Widget>[star, star, star, starHalf, starBorder],
      )
    ]);
    return new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
     titleStar,
     description,
     ButtonPurple("Navigate"),
    ]);
  }
}
