import 'package:flutter/material.dart';
import 'package:holamundo_flutter/home_trip.dart';
import 'package:holamundo_flutter/profile_trip.dart';
import 'package:holamundo_flutter/search_trip.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Trips();
  }
}

class _Trips extends State<Trips> {
  int indexTap = 0;
  final List<Widget> widgetChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];
  void onTapTapped(int index) {
    setState(() {
      this.indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
            currentIndex: indexTap,
            onTap: onTapTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("")),
            ]),
      ),
    );
  }
}
