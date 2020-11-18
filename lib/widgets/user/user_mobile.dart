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
      width: screenWidth,
      height: screenHeight,
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
                  height: screenHeight * 0.85,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
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
                          color: Color.fromRGBO(135, 201, 231, 1),
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 1,
                              color: Colors.black54,
                            ),
                          ],
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
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Xaved_36',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w800,
                                          fontSize: 25,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        'Joined March 2020',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
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
                                          fontSize: 15,
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
                        height: screenHeight * 0.07,
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Last Name',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    'BONDAD',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'First Name',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    'Duane Xavier',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'M.I.',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    'M',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Suffix',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    'N/A',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                'Person Details:',
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
                              height: screenHeight * 0.065,
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
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Age:',
                                              style: const TextStyle(
                                                fontFamily: 'Monserrat',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            SizedBox(width: 10.0),
                                            Text(
                                              '21',
                                              style: const TextStyle(
                                                fontFamily: 'Monserrat',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17,
                                                color: Colors.black,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Birthday:',
                                              style: const TextStyle(
                                                fontFamily: 'Monserrat',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            SizedBox(width: 10.0),
                                            Text(
                                              'June 6, 1999',
                                              style: const TextStyle(
                                                fontFamily: 'Monserrat',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17,
                                                color: Colors.black,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),


                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Gender:',
                                          style: const TextStyle(
                                            fontFamily: 'Monserrat',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          'Male',
                                          style: const TextStyle(
                                            fontFamily: 'Monserrat',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 17,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
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
                        height: screenHeight * 0.12,
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

                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Email:',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'dxbondad36@gmail.com',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Phone Number:',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        '+639464013144',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Column(
                                children: [
                                  Text(
                                    'Link Accounts:',
                                    style: const TextStyle(
                                      fontFamily: 'Monserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(height: 5.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 30.0,
                                        width: screenWidth * .25,
                                        color: Colors.transparent,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.circular(5.0)
                                          ),
                                          //child: Center(
                                          child: FlatButton(
                                            onPressed: () {},
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(
                                                      0, 8, 0, 8),
                                                  //child: Center(
                                                  child: ImageIcon(
                                                    AssetImage(
                                                        'assets/images/facebook-64.png'
                                                    ),
                                                    size: 18,
                                                  ),
                                                  //),
                                                ),
                                                SizedBox(width: screenWidth * .029),
                                                Text(
                                                  'Facebook',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          //),
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Container(
                                        height: 30.0,
                                        width: screenWidth * .25,
                                        color: Colors.transparent,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.circular(5.0)
                                          ),
                                          child: Center(
                                            child: FlatButton(
                                              onPressed: () {},
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(
                                                        2, 8, 0, 8),
                                                    child: Center(
                                                      child: ImageIcon(
                                                        AssetImage(
                                                          'assets/images/google.png',
                                                        ),
                                                        size: 18,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: screenWidth * .029),
                                                  Text(
                                                    'Twitter',
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 10.0),
                                      Container(
                                        height: 30.0,
                                        width: screenWidth * .25,
                                        color: Colors.transparent,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.circular(5.0)
                                          ),
                                          child: Center(
                                            child: FlatButton(
                                              onPressed: () {},
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(
                                                        2, 8, 0, 8),
                                                    child: Center(
                                                      child: ImageIcon(
                                                        AssetImage(
                                                          'assets/images/google.png',
                                                        ),
                                                        size: 18,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: screenWidth * .029),
                                                  Text(
                                                    'Google',
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),




                                ],
                              ),
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Address (Optional)',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        'B4 L2 Narra St. St. Paul Subdivision',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Barangay',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        'Palestina',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'City/Municipality',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        'Pili',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Region',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        'Bicol Region',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),


                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Zip Code',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        '4418',
                                        style: const TextStyle(
                                          fontFamily: 'Monserrat',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
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

