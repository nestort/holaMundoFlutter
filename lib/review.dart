import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String patchImage = "assets/img/avatar.jpg";
  String name = "Maria Escobedo";
  String details = "1 Review 5 Photos";
  String comments = " There is an amazing place ";
  Review(this.patchImage, this.name, this.details, this.comments);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(this.comments,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13.0, fontFamily: "Lato", color: Colors.black)),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(this.details,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13.0, fontFamily: "Lato", color: Colors.black12)),
    );
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(this.name,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 17.0, fontFamily: "Lato")),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo,userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(patchImage))),
    );
    return Row(
      children: <Widget>[photo,userDetails],
    );
  }
}
