import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';
import 'package:lifeline_integrated/widgets/home/home_widgets.dart';
import 'package:lifeline_integrated/widgets/screen_size.dart';
import 'package:lifeline_integrated/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
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
          !ScreenSize.isDesktop(context) ? _Mobile(screenHeight, screenWidth) : _Web(screenHeight, screenWidth),
        ],
      ),
    );
  }
}

SliverToBoxAdapter _Mobile(double screenHeight, double screenWidth){
  return SliverToBoxAdapter(
    child: Stack(
      children: <Widget>[
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 13, 20, 5),
            height: screenHeight * .5,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: Palette.BackgroundGradient,
            ),
          ),
        ),

        Column(
            children: <Widget>[
              CustomAppBar(),
              //screenWidth > 450 ? CustomAppBar() : SizedBox(height: screenHeight * 0.09),
              UserUpdates(),
              SizedBox(height: screenHeight * 0.005),
              prevention(),
              SizedBox(height: screenHeight * 0.025),
              Stack(
                children: <Widget>[
                  Assess(),
                ],
              ),
              SizedBox(height: screenHeight * 0.001),
              Sms()
            ]
        ),
        //screenWidth > 450 ? SizedBox(height: screenHeight * 0): CustomAppBar(),
      ],
    ),
  );
}

SliverToBoxAdapter _Web(double screenHeight, double screenWidth){
  return SliverToBoxAdapter(
    child: Stack(
      children: <Widget>[

        ClipPath(
          clipper: MyClipper(),
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 13, 20, 5),
            height: screenHeight * .5,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: Palette.BackgroundGradient,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: screenWidth * 0.4,
              height: screenHeight,
              child: WebDeskUpdates(),
            ),
            Container(
              width: screenWidth * 0.6,
              height: screenHeight,
              child: Column(
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.03),
                  Text (
                    'Hello User2301,', // to be replaced with username soon
                    style: const TextStyle(
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.w700,
                      fontSize: 33.0,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(height: screenHeight * 0.025),
                  Assess(),
                  SizedBox(height: screenHeight * 0.02),
                  WebDeskPrevention(),
                  SizedBox(height: screenHeight * 0.001),
                  Sms()
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class MyClipper extends CustomClipper<Path>{
  @override

  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.4);
    path.cubicTo(
      size.width * 0.25, size.height * 0.9,
      size.width * 0.5, size.height * 0.4,
      size.width * 0.75, size.height * 0.85,
    );
    path.quadraticBezierTo(
        size.width * .84, size.height,
        size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
