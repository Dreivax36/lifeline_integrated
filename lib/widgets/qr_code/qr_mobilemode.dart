import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:lifeline_integrated/config/palette.dart';
import 'package:lifeline_integrated/screens/qr_scan.dart';
import 'package:lifeline_integrated/widgets/custom_app_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MobileMode extends StatefulWidget {
  @override
  _MobileModeState createState() => _MobileModeState();
}

class _MobileModeState extends State<MobileMode> {
  var qrCode = "";
  String qrData = "This is only a sample qr";
  String inputErrorText;
  final TextEditingController textController = TextEditingController();

  //var now = new DateTime.now();
  String dateToday = "";
  String timeToday = "";

  void initState() {
    super.initState();
    //=> print(new DateFormat.yMMMMEEEEd().format(now)),
    dateToday = new DateFormat.yMMMMEEEEd()
        .format(new DateTime.now()); //'Wednesday, January 10, 2012'
    timeToday = new DateFormat.jm().format(new DateTime.now()); //5:08 PM
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              width: screenWidth,
              height: screenHeight * 1.22,
              decoration: BoxDecoration(
                gradient: Palette.TriBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CustomAppBar(),
                      Text(
                        timeToday,
                        style: const TextStyle(
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w700,
                          fontSize: 50,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      //SizedBox(height: screenHeight * 0.005,),
                      Text(
                        dateToday,
                        style: const TextStyle(
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.152,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'XaveD_36',
                                      style: const TextStyle(
                                        fontFamily: 'Oxygen',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20,
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
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          icon: const Icon(
                                            Icons.assignment_ind_rounded,
                                            color: Colors.white,
                                          ),
                                          label: Text(
                                            'ASSESS',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          textColor: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.005,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Starbucks, SM City Naga',
                                    style: const TextStyle(
                                      fontFamily: 'Monsterrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'No COVID-19 Symptoms Found',
                                    style: const TextStyle(
                                      fontFamily: 'Monsterrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
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
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      // Container(
                      //   width: screenWidth * 0.8,
                      //   child: Image.asset(
                      //     'assets/images/QR.png',
                      //     scale: 2.5,
                      //   ),
                      // ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.54,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 3,
                              color: Colors.black54,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: TextField(
                              controller: textController,
                              decoration: InputDecoration(
                                hintText: "Enter data to be generated",
                                errorText: inputErrorText,
                              ),
                            ),
                          ),
                          RepaintBoundary(
                            child: QrImage(
                              data: qrData,
                              version: QrVersions.auto,
                              size: screenHeight * 0.35,
                              errorStateBuilder: (cxt, err) {
                                return Text(inputErrorText =
                                    "Error! Maybe your input value is too long?");
                              },
                            ),
                          ),
                          Text(
                            qrData,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          )
                        ]),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // Text(
                      //   'CXJIZA9',
                      //   style: const TextStyle(
                      //     fontFamily: 'Oxygen',
                      //     fontWeight: FontWeight.w800,
                      //     fontSize: 50,
                      //     color: Colors.black,
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        height: 35,
                        width: screenWidth * .8, // screenWidth,
                        child: FlatButton.icon(
                          onPressed: () {
                            setState(() {
                              timeToday = new DateFormat.jm()
                                  .format(new DateTime.now());
                              dateToday = new DateFormat.yMMMMEEEEd()
                                  .format(new DateTime.now());

                              qrData = textController.text +
                                  ", $timeToday, $dateToday";
                              print(qrData);
                              inputErrorText = null;
                            });
                            //print(new DateFormat.jm().format(new DateTime.now()));
                          },
                          color: Palette.greenButton,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          icon: const Icon(
                            Icons.refresh,
                            color: Colors.white,
                          ),
                          label: Text(
                            'GENERATE QR',
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Container(
                        height: 35,
                        width: screenWidth * .8, // screenWidth,
                        child: FlatButton.icon(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => QRScan()));
                          },
                          //=> print(new DateFormat.yMMMMEEEEd().format(now)),
                          color: Palette.redButton,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          icon: const Icon(
                            Icons.qr_code_sharp,
                            color: Colors.white,
                          ),
                          label: Text(
                            'ENTER CODE',
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Container(
                        height: 35,
                        width: screenWidth * .8, // screenWidth,
                        child: FlatButton.icon(
                          onPressed: scan,
                          color: Palette.redAccentButton,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          icon: const Icon(
                            Icons.camera,
                            color: Colors.white,
                          ),
                          label: Text(
                            'SCAN',
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          textColor: Colors.white,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future scan() async {
    try {
      var qrCode = await BarcodeScanner.scan();
      setState(() => this.qrCode = qrCode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.qrCode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.qrCode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.qrCode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.qrCode = 'Unknown error: $e');
    }

    _showMyDialog();
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          title: Text('QR RESULTS'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Converted qr to data:',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  qrCode,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}

// SliverToBoxAdapter _qr(
//     double screenHeight, double screenWidth, BuildContext context) {
//   return SliverToBoxAdapter(
//     child: Container(
//       width: screenWidth,
//       height: screenHeight + 100,
//       decoration: BoxDecoration(
//         gradient: Palette.TriBlue,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               CustomAppBar(),
//               Text(
//                 timeToday,
//                 style: const TextStyle(
//                   fontFamily: 'Oxygen',
//                   fontWeight: FontWeight.w700,
//                   fontSize: 50,
//                   color: Colors.black,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               //SizedBox(height: screenHeight * 0.005,),
//               Text(
//                 dateToday,
//                 style: const TextStyle(
//                   fontFamily: 'Oxygen',
//                   fontWeight: FontWeight.w500,
//                   fontSize: 20,
//                   color: Colors.black,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: screenHeight * 0.02,
//               ),
//               Container(
//                 width: screenWidth * 0.8,
//                 height: screenHeight * 0.152,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Expanded(
//                             child: Text(
//                               'XaveD_36',
//                               style: const TextStyle(
//                                 fontFamily: 'Oxygen',
//                                 fontWeight: FontWeight.w800,
//                                 fontSize: 20,
//                                 color: Colors.black,
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 height: 30,
//                                 //width: screenWidth * .15, // screenWidth,
//                                 child: FlatButton.icon(
//                                   onPressed: () {},
//                                   color: Palette.bluetheme,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30.0),
//                                   ),
//                                   icon: const Icon(
//                                     Icons.assignment_ind_rounded,
//                                     color: Colors.white,
//                                   ),
//                                   label: Text(
//                                     'ASSESS',
//                                     style: const TextStyle(
//                                       fontWeight: FontWeight.w800,
//                                       fontSize: 16.0,
//                                     ),
//                                   ),
//                                   textColor: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: screenHeight * 0.005,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Starbucks, SM City Naga',
//                             style: const TextStyle(
//                               fontFamily: 'Monsterrat',
//                               fontWeight: FontWeight.w500,
//                               fontSize: 17,
//                               color: Colors.black,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             'No COVID-19 Symptoms Found',
//                             style: const TextStyle(
//                               fontFamily: 'Monsterrat',
//                               fontWeight: FontWeight.w500,
//                               fontSize: 17,
//                               color: Colors.black,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: screenHeight * 0.01,
//               ),
//               Container(
//                 width: screenWidth * 0.8,
//                 child: Image.asset(
//                   'assets/images/QR.png',
//                   scale: 2.5,
//                 ),
//               ),
//               SizedBox(
//                 height: screenHeight * 0.001,
//               ),
//               Text(
//                 'CXJIZA9',
//                 style: const TextStyle(
//                   fontFamily: 'Oxygen',
//                   fontWeight: FontWeight.w800,
//                   fontSize: 50,
//                   color: Colors.black,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: screenHeight * 0.01,
//               ),
//               Container(
//                 height: 30,
//                 width: screenWidth * .7, // screenWidth,
//                 child: FlatButton.icon(
//                   onPressed: () {},
//                   color: Palette.greenButton,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                   icon: const Icon(
//                     Icons.refresh,
//                     color: Colors.white,
//                   ),
//                   label: Text(
//                     'REFRESH',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w800,
//                       fontSize: 19.0,
//                     ),
//                   ),
//                   textColor: Colors.white,
//                 ),
//               ),
//               SizedBox(
//                 height: screenHeight * 0.01,
//               ),
//               Container(
//                 height: 30,
//                 width: screenWidth * .7, // screenWidth,
//                 child: FlatButton.icon(
//                   onPressed: () {}, //=> print(new DateFormat.yMMMMEEEEd().format(now)),
//                   color: Palette.redButton,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                   icon: const Icon(
//                     Icons.qr_code_sharp,
//                     color: Colors.white,
//                   ),
//                   label: Text(
//                     'ENTER CODE',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w800,
//                       fontSize: 19.0,
//                     ),
//                   ),
//                   textColor: Colors.white,
//                 ),
//               ),
//               SizedBox(
//                 height: screenHeight * 0.01,
//               ),
//               Container(
//                 height: 30,
//                 width: screenWidth * .7, // screenWidth,
//                 child: FlatButton.icon(
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => QRScan()));
//                   },
//                   color: Palette.redAccentButton,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                   icon: const Icon(
//                     Icons.camera,
//                     color: Colors.white,
//                   ),
//                   label: Text(
//                     'SCAN',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w800,
//                       fontSize: 19.0,
//                     ),
//                   ),
//                   textColor: Colors.white,
//                 ),
//               ),
//             ]),
//       ),
//     ),
//   );
// }
