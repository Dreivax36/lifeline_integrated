import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';

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
          Expanded(
            child: Container(
              width: screenWidth * 0.65,
              child: Image.asset(
                'assets/images/QR.png',
              ),
            ),
          ),
          Container(
            width: screenWidth * 0.35,
            decoration: BoxDecoration(
              gradient: Palette.TriBlue,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text(
                     '12:57',
                     style: const TextStyle(
                       fontFamily: 'Oxygen',
                       fontWeight: FontWeight.w700,
                       fontSize: 80,
                       color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                   ),
                   //SizedBox(height: screenHeight * 0.005,),
                   Text(
                     'Wednesday, November 11, 2020',
                     style: const TextStyle(
                       fontFamily: 'Oxygen',
                       fontWeight: FontWeight.w500,
                       fontSize: 20,
                       color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                   ),
                   SizedBox(height: screenHeight * 0.02,),
                   Container(
                     width: screenWidth * 0.3,
                     height: screenHeight * 0.2,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(30.0),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Expanded(
                                 child: Text(
                                   'XaveD_36',
                                   style: const TextStyle(
                                     fontFamily: 'Oxygen',
                                     fontWeight: FontWeight.w800,
                                     fontSize: 30,
                                     color: Colors.black,
                                   ),
                                   textAlign: TextAlign.left,
                                 ),
                               ),
                               Row(
                                 children: [
                                   Container(
                                     height: 30,
                                     //width: screenWidth * .15, // screenWidth,
                                     child: FlatButton.icon(
                                       onPressed: () {},
                                       color: Palette.bluetheme,
                                       shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(30.0),
                                       ),
                                       icon: const Icon(
                                         Icons.assignment_ind_rounded,
                                         color: Colors.white,
                                       ),
                                       label: Text(
                                         'ASSESS',
                                         style: const TextStyle(
                                           fontWeight: FontWeight.w800,
                                           fontSize: 19.0,
                                         ),
                                       ),
                                       textColor: Colors.white,
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                           SizedBox(height: screenHeight * 0.01,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                 'Starbucks, SM City Naga',
                                 style: const TextStyle(
                                   fontFamily: 'Monsterrat',
                                   fontWeight: FontWeight.w500,
                                   fontSize: 20,
                                   color: Colors.black,
                                 ),
                                 textAlign: TextAlign.center,
                               ),
                               Text(
                                 'No COVID-19 Symptoms Found',
                                 style: const TextStyle(
                                   fontFamily: 'Monsterrat',
                                   fontWeight: FontWeight.w500,
                                   fontSize: 20,
                                   color: Colors.black,
                                 ),
                                 textAlign: TextAlign.center,
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: screenHeight * 0.05,),
                   Text(
                     'CXJIZA9',
                     style: const TextStyle(
                       fontFamily: 'Oxygen',
                       fontWeight: FontWeight.w800,
                       fontSize: 70,
                       color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                   ),
                   SizedBox(height: screenHeight * 0.02,),
                   Container(
                     height: 30,
                     width: screenWidth * .15, // screenWidth,
                     child: FlatButton.icon(
                       onPressed: () {},
                       color: Palette.greenButton,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                       icon: const Icon(
                         Icons.refresh,
                         color: Colors.white,
                       ),
                       label: Text(
                         'REFRESH',
                         style: const TextStyle(
                           fontWeight: FontWeight.w800,
                           fontSize: 19.0,
                         ),
                       ),
                       textColor: Colors.white,
                     ),
                   ),
                   SizedBox(height: screenHeight * 0.01,),
                   Container(
                     height: 30,
                     width: screenWidth * .15, // screenWidth,
                     child: FlatButton.icon(
                       onPressed: () {},
                       color: Palette.redButton,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                       ),
                       icon: const Icon(
                         Icons.qr_code_sharp,
                         color: Colors.white,
                       ),
                       label: Text(
                         'ENTER CODE',
                         style: const TextStyle(
                           fontWeight: FontWeight.w800,
                           fontSize: 19.0,
                         ),
                       ),
                       textColor: Colors.white,
                     ),
                   ),
                 ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}