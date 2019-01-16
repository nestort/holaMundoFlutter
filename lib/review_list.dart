import 'package:flutter/material.dart';
import 'Review.dart';
class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/avatar.jpg","Maria Mercedes","1 review | 5 fotos","Sitio hermoso")

      ],
    );
  }

}