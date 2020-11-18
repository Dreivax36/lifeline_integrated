import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';
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
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: IconButton(
                  icon: Icon(
                      Icons.keyboard_arrow_up_outlined,
                      size: 50,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,0),
                    blurRadius: 5,
                    color: Colors.black54,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.1,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(160, 225, 149, 1),
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,0),
                            blurRadius: 5,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'SYMPTOMS',
                                  style: const TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 21,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.start,
                                ),

                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25.0),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0,0),
                                        blurRadius: 5,
                                        color: Colors.black54,
                                      ),
                                    ],
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.more_horiz_rounded),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'No COVID-19 Symptoms Found',
                              style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 21,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Engagements',
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w900,
                                fontSize: 21,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Center(
                            child: Text(
                              'No Current Engagements',
                              style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        //ScreenSize.isDesktop(context) ? SizedBox(height: screenHeight * 0) : CustomAppBar(),
      ],
    ),
  );
}