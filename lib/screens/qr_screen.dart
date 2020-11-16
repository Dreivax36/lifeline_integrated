import 'package:flutter/material.dart';
import 'package:lifeline_integrated/widgets/qr_code/qr_widgets.dart';
import 'package:lifeline_integrated/widgets/widgets.dart';

class QRScreen extends StatefulWidget {
  @override
  _QRScreenState createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: !ScreenSize.isDesktop(context) ? MobileMode() : DesktopMode(),
    );
  }
}
