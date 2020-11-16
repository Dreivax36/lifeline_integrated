import 'package:flutter/material.dart';
import 'package:lifeline_integrated/widgets/widgets.dart';
import 'package:lifeline_integrated/widgets/calendar/calendar_widgets.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: !ScreenSize.isDesktop(context) ? MobileMode() : DesktopMode(),
      );
  }
}





