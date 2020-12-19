import 'package:flutter/material.dart';
import 'package:lifeline_integrated/screens/nav_screen.dart';
import 'package:lifeline_integrated/screens/registration_3_screen.dart';
import 'package:lifeline_integrated/widgets/screen_size.dart';
import 'package:lifeline_integrated/config/palette.dart';

class Register2Form extends StatefulWidget {
  @override
  _Register2FormState createState() => _Register2FormState();
}
String email, password;
bool _obscureText = true, checkedValue = false;

class _Register2FormState extends State<Register2Form> {
  @override
  Widget build(BuildContext context) {
    double contWidth = 400;
    double contHeight = 500;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Form(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                  children: <Widget> [
                    Text(
                      'ENTER YOUR INFORMATION',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        'We will not disclose any of your information and only use it for the app’s purposes',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 10),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        // validator: (input) {
                        //   if (input.isEmpty) {
                        //     return 'Provide an email';
                        //   }
                        // },
                        onSaved: (input) => email = input.trim(),
                        decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Username',
                          labelStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                            color: Colors.black12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        // validator: (input) {
                        //   if (input.isEmpty) {
                        //     return 'Provide an email';
                        //   }
                        // },
                        onSaved: (input) => email = input.trim(),
                        decoration: InputDecoration(
                          labelText: 'First name',
                          hintText: 'First name',
                          labelStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                            color: Colors.black12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        // validator: (input) {
                        //   if (input.isEmpty) {
                        //     return 'Provide an email';
                        //   }
                        // },
                        onSaved: (input) => email = input.trim(),
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          hintText: 'Last Name',
                          labelStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                            color: Colors.black12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        // validator: (input) {
                        //   if (input.isEmpty) {
                        //     return 'Provide an email';
                        //   }
                        // },
                        onSaved: (input) => email = input.trim(),
                        decoration: InputDecoration(
                          labelText: 'Middle Name',
                          hintText: 'Middle Name',
                          labelStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                            color: Colors.black12,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            SizedBox(height: screenHeight * .03),
            Container(
              height: 40,
              width: ScreenSize.isDesktop(context) ? contWidth / 1.38 : screenWidth / 1.38,
              child: FlatButton(
                color: Palette.blueButton,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register3()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            // ClipPath(
            //   clipper: MyClipper(),
            //   child: Container(
            //     padding: const EdgeInsets.fromLTRB(20, 13, 20, 5),
            //     height: screenHeight * .3,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(colors: [
            //         Color.fromRGBO(5, 96, 144, 1),
            //         Color.fromRGBO(81, 159, 199, 1),
            //       ]),
            //     ),
            //   ),
            // ),
          ],
        )
    );
    // return Container(
    //   color: Colors.blue,
    // );
  }
}



class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 40);
    path.cubicTo(size.width / 3500, size.height + 40, 2.2 * size.width / 2.2, size.height * 0.65, size.width, size.height * 1);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}