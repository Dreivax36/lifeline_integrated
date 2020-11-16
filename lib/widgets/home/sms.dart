import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';
import 'package:lifeline_integrated/widgets/screen_size.dart';

class Sms extends StatefulWidget {
  @override
  _SmsState createState() => _SmsState();
}

class _SmsState extends State<Sms> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            !ScreenSize.isDesktop(context) ?
            Text (
              'Do you need any assistance?',
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17.0,
              ),
              textAlign: TextAlign.left,
              maxLines: 5,
            ) :
            Text (
              'Do you need any assistance?',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 27.0,
                ),
                textAlign: TextAlign.left,
                maxLines: 5,
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 0.0, 7, 0.0),
              child:
              !ScreenSize.isDesktop(context) ?
              Text (
                'The Department of Health is providing '
                    'telemedicine consultations for patients '
                    'who need COVID-19 medical advice or other '
                    'non-COVID-19 primary care consultations.',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.left,
                maxLines: 5,

              ) :
              Text (
                'The Department of Health is providing '
                'telemedicine consultations for patients '
                'who need COVID-19 medical advice or other '
                'non-COVID-19 primary care consultations.',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 5,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            !ScreenSize.isDesktop(context) ?
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 30,
                  width: screenWidth * .43, // screenWidth,
                  child: FlatButton.icon(
                    onPressed: () {},
                    color: Palette.redButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    icon: const Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Call Now',
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 19.0,
                      ),
                    ),
                    textColor: Colors.white,
                  ),
                ),

                SizedBox(width: screenWidth * .019), //screenWidth

                Container(
                    height: 30,
                    width: screenWidth * .43, // screenWidth,
                  child: FlatButton.icon(
                    onPressed: () {},
                    color: Palette.greenButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    icon: const Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Send SMS',
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 19.0,
                      ),
                    ),
                    textColor: Colors.white,
                  ),
                ),
              ],
            ) :
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 40,
                  width: screenWidth/2 * .55, // screenWidth,
                  child: FlatButton.icon(
                    onPressed: () {},
                    color: Palette.redButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    icon: const Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Call Now',
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 19.0,
                      ),
                    ),
                    textColor: Colors.white,
                  ),
                ),

                SizedBox(width: screenWidth * .015), //screenWidth

                Container(
                  height: 40,
                  width: screenWidth/2 * .55, // screenWidth,
                  child: FlatButton.icon(
                    onPressed: () {},
                    color: Palette.greenButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    icon: const Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Send SMS',
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
          ]
      ),
    );
  }
}
