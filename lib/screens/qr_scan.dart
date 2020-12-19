import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:barcode_scan/barcode_scan.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lifeline_integrated/config/palette.dart';
import 'package:lifeline_integrated/widgets/qr_code/qr_widgets.dart';
import 'package:lifeline_integrated/widgets/widgets.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRScan extends StatefulWidget {
  @override
  _QRScanState createState() => _QRScanState();
}

class _QRScanState extends State<QRScan> {
  var qrCode = "";

  GlobalKey globalKey = new GlobalKey();
  String qrData = "This is only a sample qr";
  String inputErrorText;
  final TextEditingController textController = TextEditingController();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
        decoration: BoxDecoration(
          gradient: Palette.BackgroundGradientTD,
        ),
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          CustomAppBar(),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: 80,
            height: screenHeight * 0.5,
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
              Expanded(
                child: RepaintBoundary(
                  key: globalKey, //used for debugging
                  child: QrImage(
                    data: qrData,
                    version: QrVersions.auto,
                    //size: screenHeight * 0.4,
                    errorStateBuilder: (cxt, err) {
                      return Text(inputErrorText =
                          "Error! Maybe your input value is too long?");
                    },
                  ),
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
          Container(
            child: FlatButton(
              color: Palette.greenButton,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              onPressed: () {
                setState(() {
                  qrData = textController.text;
                  inputErrorText = null;
                });
              },
              child: Text(
                'GENERATE QR',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
              padding: const EdgeInsets.all(10.0),
              width: 80,
              height: 80,
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
              child: Expanded(
                child: Text(
                  qrCode,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              )),
          Container(
            child: FlatButton(
              color: Palette.blueButton,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              onPressed: scan,
              child: Text(
                'START SCANNING',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
        ]),
      ),
    );
  }

  //FOR SCANNING
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
  }

  //FOR SHARING QR ---IN PROGRESS---
  Future<void> _captureAndSharePng() async {
    try {
      RenderRepaintBoundary boundary =
          globalKey.currentContext.findRenderObject();
      var image = await boundary.toImage();
      ByteData byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final file = await new File('${tempDir.path}/image.png').create();
      await file.writeAsBytes(pngBytes);

      final channel = const MethodChannel('channel:me.alfian.share/share');
      channel.invokeMethod('shareFile', 'image.png');
    } catch (e) {
      print(e.toString());
    }
  }
}
