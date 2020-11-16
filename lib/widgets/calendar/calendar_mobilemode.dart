import 'package:flutter/material.dart';
import 'package:lifeline_integrated/widgets/custom_app_bar.dart';
import 'package:lifeline_integrated/widgets/screen_size.dart';
import 'package:table_calendar/table_calendar.dart';


class MobileMode extends StatefulWidget {
  @override
  _MobileModeState createState() => _MobileModeState();
}

class _MobileModeState extends State<MobileMode> {
  @override
  CalendarController _controller;

  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of( context )
        .size
        .height;
    final screenWidth = MediaQuery
        .of( context )
        .size
        .width;
    return Scaffold(
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildCalendar(screenHeight, screenWidth, _controller, context),
        ],
      ),
    );
  }
}

SliverToBoxAdapter _buildCalendar(double screenHeight, double screenWidth, _controller, context){
  return SliverToBoxAdapter(
    child: Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(20, 13, 20, 5),
          height: screenHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(81, 159, 199, 1),
                  Color.fromRGBO(5, 96, 144, 1),
                ]
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            //ScreenSize.isDesktop(context) ? SizedBox(height: screenHeight * 0.02) : SizedBox(height: screenHeight * 0.07),
            TableCalendar(calendarController: _controller,),
          ],
        ),
        //ScreenSize.isDesktop(context) ? SizedBox(height: screenHeight * 0) : CustomAppBar(),
      ],
    ),
  );
}