import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lifeline_integrated/config/palette.dart';

class WebDeskUpdates extends StatefulWidget {
  @override
  _WebDeskUpdatesState createState() => _WebDeskUpdatesState();
}

class _WebDeskUpdatesState extends State<WebDeskUpdates> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width * 4;
    return Container(
        padding: const EdgeInsets.fromLTRB(17, 17, 17, 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text (
              'PH COVID-19 Updates', // to be replaced with username soon
               style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 30.0,
                color: Colors.white,
               ),
              maxLines: 1,
            ),
            SizedBox(height: screenHeight * 0.00000001),
            Text (
              'As of Thursday, October 29, 2020', // to be replaced with username soon
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
                color: Colors.black,
              ),
              maxLines: 1,
            ),
            SizedBox(height: screenHeight * 0.0068),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _CovidCard('CONFIRMED', '312K', Palette.Confirmed),
                  SizedBox(height: screenHeight * 0.02),
                  _CovidCard('RECOVERED', '253K', Palette.Recovered),
                  SizedBox(height: screenHeight * 0.02),
                  _CovidCard('DEATHS', '5504', Palette.Death),
                ]
            ),
          ],
        ),
    );
  }

  Widget _CovidCard(String a, String b, LinearGradient c,){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width * 0.4;
    return Container(
      width: screenWidth * 0.95, // screenWidth ,
      height: screenHeight * 0.23,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,4),
            blurRadius: 5,
            color: Colors.black54,
          ),
        ],
        gradient: c,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 15.0, 12.0, 15.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                a,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    b,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      fontSize: 90.0,
                      color: Color.fromRGBO(65, 65, 65, 1),
                    ),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}