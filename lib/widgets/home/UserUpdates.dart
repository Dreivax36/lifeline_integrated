import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';

class UserUpdates extends StatefulWidget {
  @override
  _UserUpdatesState createState() => _UserUpdatesState();
}

class _UserUpdatesState extends State<UserUpdates> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
        padding: const EdgeInsets.fromLTRB(17, 0, 17, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text (
              'Hello User2301,', // to be replaced with username soon
              style: const TextStyle(
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.w700,
                fontSize: 27.0,
                color: Colors.white,
              ),
            maxLines: 1,
            ),
            SizedBox(height: screenHeight * 0.023),
            Text (
              'PH COVID-19 Updates,', // to be replaced with username soon
               style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
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
                fontSize: 15.0,
                color: Colors.black,
              ),
              maxLines: 1,
            ),
            SizedBox(height: screenHeight * 0.0068),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _CovidCard('CONFIRMED', '312K', Palette.Confirmed),
                  Spacer(),
                  _CovidCard('RECOVERED', '253K', Palette.Recovered),
                  Spacer(),
                  _CovidCard('DEATHS', '5504', Palette.Death),
                ]
            ),
          ],
        ),
    );
  }

  Widget _CovidCard(String a, String b, LinearGradient c){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 3.5, // screenWidth ,
      height: screenHeight * 0.12,
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
        padding: const EdgeInsets.fromLTRB(9.0, 15.0, 9.0, 15.0),
        child: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  a,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                    fontSize: 12.0,
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
                        fontSize: 27.0,
                        color: Color.fromRGBO(65, 65, 65, 1),
                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}