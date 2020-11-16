import 'package:flutter/material.dart';
import 'package:lifeline_integrated/widgets/calendar/calendar_mobilemode.dart';

class DesktopMode extends StatefulWidget {
  @override
  _DesktopModeState createState() => _DesktopModeState();
}

class _DesktopModeState extends State<DesktopMode> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      child: Row(
        children: [
          Container(
            width: screenWidth * 0.3,
            child: MobileMode(),
          ),
          Container(
            width: screenWidth * 0.7,
            child: Image.asset(
              'assets/images/map.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}