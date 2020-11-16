import 'package:flutter/material.dart';
import 'package:lifeline_integrated/screens/nav_screen.dart';
import 'package:lifeline_integrated/widgets/screen_size.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}
String email, password;
bool _obscureText = true, checkedValue = false;

class _LoginFormState extends State<LoginForm> {
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
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        // validator: (input) {
                        //   if (input.isEmpty) {
                        //     return 'Provide an email';
                        //   }
                        // },
                        onSaved: (input) => email = input.trim(),
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          hintText: 'your@email.com',
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
                          suffixIcon: Icon(
                            Icons.mail,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 5),
                      child: TextFormField(
                        obscureText: _obscureText,
                        keyboardType: TextInputType.text,
                        // validator: (input) {
                        //   if (input.isEmpty) {
                        //     return 'Provide an email';
                        //   }
                        // },
                        onSaved: (input) => password = input.trim(),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
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
                          suffixIcon: IconButton(
                            icon: Icon(
                                _obscureText ? Icons.visibility : Icons.visibility_off
                            ),
                            onPressed: (){
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            color: Colors.grey,
                            iconSize: 20.0,
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
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5.0)
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NavScreen()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 7.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                          value: checkedValue,
                          onChanged: (newValue) {
                            setState(() {
                              checkedValue = newValue;
                            });
                          },  //  <-- leading Checkbox
                        ),
                        Text(
                          "Remember Me",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w200,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w200,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ]
              ),
            ),
            //SizedBox(height: 1.0),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 1.3,
                      color: Colors.black38,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1.3,
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: ScreenSize.isDesktop(context) ? contWidth * 0.35 : screenWidth * .35,
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
                            SizedBox(width: contWidth * .029),
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
                    height: 40.0,
                    width: ScreenSize.isDesktop(context) ? contWidth * 0.35 : screenWidth * .35,
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
                              SizedBox(width: contWidth * .029),
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
            ),
            SizedBox(height: 15.0),
            Container(
              height: 40,
              width: ScreenSize.isDesktop(context) ? contWidth / 1.38 : screenWidth / 1.38,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5.0)
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => null //SignUp()
                      )
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
