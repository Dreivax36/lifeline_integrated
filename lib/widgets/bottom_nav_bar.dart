import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';

class BottomNavBar extends StatefulWidget {
  final  Map<String, IconData> icontext;
  int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  BottomNavBar({
    Key key,
    @required this.icontext,
    @required this.selectedIndex,
    @required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState(
      this.icontext,
      this.selectedIndex,
      this.onTap,
      this.isBottomIndicator
  );
}

class _BottomNavBarState extends State<BottomNavBar> {

  final  Map<String, IconData> icontext;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  _BottomNavBarState(
      this.icontext,
      this.selectedIndex,
      this.onTap,
      this.isBottomIndicator
  );



  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: widget.icontext
          .map((title, icon) => MapEntry(
          title,
          BottomNavigationBarItem(
            icon: Icon(icon, size: 30.0),
            title: Text(title),
          )))
          .values
          .toList(),
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.white,
      selectedFontSize: 11.0,
      unselectedItemColor: Colors.grey,
      unselectedFontSize: 11.0,
      onTap: (index) => setState(() => widget.selectedIndex = index),
    );
  }
}
