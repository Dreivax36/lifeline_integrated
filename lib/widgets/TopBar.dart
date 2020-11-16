import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';
import 'package:lifeline_integrated/screens/home_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class TopBar extends StatefulWidget {
  final Function(int) onTap;
  final bool isBottomIndicator;
  final Map<String, IconData> icontext;
  final int selectedIndex;

  const TopBar({Key key, this.onTap, this.isBottomIndicator, this.selectedIndex, this.icontext}) : super(key: key);


  @override
  _TopBarState createState() =>
      _TopBarState(
        this.icontext,
        this.onTap,
        this.isBottomIndicator,
        this.selectedIndex,
      );
}

class _TopBarState extends State<TopBar> {

  final Map<String, IconData> icontext;
  int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  _TopBarState(
      this.icontext,
      this.onTap,
      this.isBottomIndicator,
      this.selectedIndex
  );

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: selectedIndex,
      onTap: (index) => setState(() => selectedIndex = index),
      selectedItemColor: Palette.bluelight,
      unselectedItemColor: Colors.black,
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),

        /// Likes
        SalomonBottomBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          title: Text("Calendar"),
        ),

        /// Search
        SalomonBottomBarItem(
          icon: Icon(Icons.qr_code_sharp),
          title: Text("QR"),
        ),
      ],
    );
  }
}
