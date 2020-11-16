import 'package:flutter/material.dart';

class WebDeskPrevention extends StatefulWidget {
  @override
  _WebDeskPreventionState createState() => _WebDeskPreventionState();
}

class _WebDeskPreventionState extends State<WebDeskPrevention> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width * 0.6;
    return Padding(
      padding: EdgeInsets.fromLTRB(17, 0, 17, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text (
              'PREVENTIONS', // to be replaced with username soon
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
                color: Colors.black,
              ),
              maxLines: 1,
            ),
            SizedBox(height: screenHeight * 0.01),
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
    );
  }

  Widget _PrevCard(String text, String picture){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.18, // screenWidth ,
      height: screenHeight * 0.22,
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
        padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
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
                    fontSize: 13,
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
}



