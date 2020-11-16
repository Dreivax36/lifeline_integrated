import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';

import '../screen_size.dart';

class Assess extends StatefulWidget {
  @override
  _AssessState createState() => _AssessState();
}

class _AssessState extends State<Assess> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget> [
        InkWell(
          child: Container(
            width: !ScreenSize.isDesktop(context) ? screenWidth / 1.1 : (screenWidth * 0.58) , // screenWidth ,
            height: screenHeight * 0.19,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,4),
                  blurRadius: 5,
                  color: Colors.black54,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/virus.gif'
                ),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              gradient: Palette.TriBlue,
            ),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20, 0.0),
                child: Text(
                  'COVID-19 Self Assessment',
                  style: const TextStyle(
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: screenHeight * 0.01 ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20, 0.0),
                child: Text(
                  'This contains several questions about some '
                      'symptoms of COVID-19 that you might be '
                      'feeling to determine your current health condition.', // to be replaced with username soon
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: screenHeight * 0.001 ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'CONTINUE', // to be replaced with username soon
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
              ),
          ),
          onTap: () {
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AssessPage()
              ),
            );*/ //change to questions
          },
        ),
        /*Positioned(
          //left: screenWidth * 0.13,
          top: screenHeight * .000001,
          child: Image.asset(
            'assets/images/virus.gif',
            gaplessPlayback: true,
            scale: 5.5,
          ),
        ),*/
      ]
    );

    /*Padding(
      padding: EdgeInsets.fromLTRB(17, 0, 17, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text (
            'PREVENTIONS', // to be replaced with username soon
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              color: Colors.black,
            ),
            maxLines: 1,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _PrevCard('Wear a Mask when going Outside', 'assets/images/mask.gif'),
                Spacer(),
                _PrevCard('Observe Proper Hand Washing', 'assets/images/wash.gif'),
                Spacer(),
                _PrevCard('Maintain Social Distancing', 'assets/images/hands.gif'),
              ]
          ),
        ],
      ),
    );*/
  }

  Widget _PrevCard(String text, String picture){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 3.5, // screenWidth ,
      height: screenHeight * 0.17,
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
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.asset(
                  picture,
                  gaplessPlayback: true,
                  scale: 7,
                ),
              ),
              Center(
                child: Text(
                  text, // to be replaced with username soon
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 8.6,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ]
        ),
      ),
    );
  }


  /*@override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Positioned(
          left: screenWidth * 0.13,
          top: screenHeight * 0.595,
          child: InkWell(
            child: Container(
              width: screenWidth / 1.22, // screenWidth ,
              height: screenHeight * 0.17,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,4),
                    blurRadius: 5,
                    color: Colors.black54,
                  ),
                ],
                gradient: LinearGradient(
                    begin: Alignment(-1.0, -2.0),
                    end: Alignment(1.0, 2.0),
                    colors: [
                      Color.fromRGBO(14, 120, 172, 1),
                      Color.fromRGBO(84, 177, 222, 1),
                      Color.fromRGBO(135, 201, 231, 1),
                    ]
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 17.0, 0, 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(95.0, 0.0, 25, 5.0),
                      child: Text(
                        'COVID-19 Self Assessment', // to be replaced with username soon
                        style: const TextStyle(
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01 ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(95.0, 0.0, 30, 5.0),
                      child: Text(
                        'This contains several questions about some symptoms of COVID-19 that you might be feeling to determine your current health condition.', // to be replaced with username soon
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AssessPage()),); //change to questions
            },
          ),
        ),
      ],
    );
  }*/
}
