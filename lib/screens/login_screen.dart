import 'package:flutter/material.dart';
import 'package:lifeline_integrated/widgets/login_form.dart';
import 'package:lifeline_integrated/widgets/screen_size.dart';
import 'package:lifeline_integrated/screens/nav_screen.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}
String email, password;
bool _obscureText = true, checkedValue = false;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double contWidth = 400;
    double contHeight = 500;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return new Scaffold(
      //appBar: screenWidth < 450 ? null : WebDeskAppBar(),
      body: !ScreenSize.isDesktop(context) ?
          Container(
            child: Column(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 13, 20, 5),
                    height: screenHeight * .3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(5, 96, 144, 1),
                        Color.fromRGBO(81, 159, 199, 1),
                      ]),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Lifeline1.png',
                        //scale: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * .018),
                //This is where the Log in is located
                LoginForm(),
              ],
            )
          ) :
      Stack(
        children: <Widget>[
          new Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(5, 96, 144, 1),
                    Color.fromRGBO(81, 159, 199, 1),
                  ]
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: contHeight,
                  width: contWidth,
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
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                    child: LoginForm(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
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
