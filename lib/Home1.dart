import 'package:flutter/material.dart';
import 'package:go_pray/Appcolor.dart';
import 'package:go_pray/Home.dart';
import 'package:go_pray/Mosque.dart';
import 'package:go_pray/Mosque1.dart';
import 'package:go_pray/Mosquedetails.dart';
import 'package:go_pray/Pray_time.dart';
import 'package:go_pray/Settings.dart';
import 'package:go_pray/Times.dart';
class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int _currentIndex=0;
  List _screens=[Home(),Pray_time(),Mosque1(),Settings()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _updateIndex,
          selectedItemColor: Appcolor.PrimaryColor,
          backgroundColor: Appcolor.PrimaryColor17,
          selectedFontSize: 13,
          unselectedFontSize: 13,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.mosque),

            ),
            BottomNavigationBarItem(
              label: "Times",
              icon: Icon(Icons.access_time_sharp),
            ),
            BottomNavigationBarItem(
              label: "Mosque",
              icon: Icon(Icons.share_location),
            ),
            BottomNavigationBarItem(
              label: "Setting",
              icon: Icon(Icons.settings),
            ),
          ],
        ),
    );
  }
}
