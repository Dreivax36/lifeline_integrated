import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';
import 'package:lifeline_integrated/data/data.dart';
import 'package:lifeline_integrated/widgets/custom_app_bar.dart';
import 'package:lifeline_integrated/widgets/user_card.dart';

class UserMobile extends StatefulWidget {
  @override
  _UserMobileState createState() => _UserMobileState();
}

class _UserMobileState extends State<UserMobile> {
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
    return Scaffold(
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _qr(screenHeight, screenWidth),
        ],
      ),
    );
  }
}

SliverToBoxAdapter _qr(double screenHeight, double screenWidth){
  String image = 'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80';
  return SliverToBoxAdapter(
    child: Container(
      decoration: BoxDecoration(
        gradient: Palette.BackgroundGradientTD,
      ),
      child: Column(
            children: [
              CustomAppBar(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: screenWidth * 0.95,
                  height: screenHeight * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                                child: Text(
                                  'PROFILE',
                                  style: const TextStyle(
                                  fontFamily: 'Monserrat',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 8, 0),
                            child: IconButton(
                              icon: Icon(Icons.more_horiz_rounded),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: screenHeight * 0.15,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.grey[200],
                                backgroundImage: CachedNetworkImageProvider(image),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Xaved_36',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        'Joined March 2020',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '+63946013144',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: screenHeight * 0.11,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 3,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '40',
                                  style: const TextStyle(
                                    fontFamily: 'Monserrat',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Engagements',
                                  style: const TextStyle(
                                    fontFamily: 'Monserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '128',
                                  style: const TextStyle(
                                    fontFamily: 'Monserrat',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Persons Contacted',
                                  style: const TextStyle(
                                    fontFamily: 'Monserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: Text(
                              'Name:',
                              style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 3,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'Age:',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Container(
                                  height: screenHeight * 0.1,
                                  width: screenWidth * 0.435,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0,2),
                                        blurRadius: 3,
                                        color: Colors.black54,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'Gender:',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Container(
                                  height: screenHeight * 0.1,
                                  width: screenWidth * 0.435,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0,2),
                                        blurRadius: 3,
                                        color: Colors.black54,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),


                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: Text(
                              'Contact Information:',
                              style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 3,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: Text(
                              'Address:',
                              style: const TextStyle(
                                fontFamily: 'Monserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 3,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
        ),
    ),
  );
}

