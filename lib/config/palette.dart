import 'package:flutter/material.dart';

class Palette {
  static const LinearGradient BackgroundGradient = LinearGradient(
      colors: [
        Color.fromRGBO(5, 96, 144, 1),
        Color.fromRGBO(81, 159, 199, 1),
      ]
  );

  static const LinearGradient BackgroundGradientTD = LinearGradient(
      begin: Alignment(-1.0, -2.0),
      end: Alignment(1.0, 2.0),
      colors: [
        Color.fromRGBO(5, 96, 144, 1),
        Color.fromRGBO(81, 159, 199, 1),
      ]
  );

  static const LinearGradient TriBlue = LinearGradient (
    begin: Alignment(-1.0, -2.0),
    end: Alignment(1.0, 2.0),
    colors: [
      Color.fromRGBO(5, 96, 144, 1),
      Color.fromRGBO(84, 177, 222, 1),
      Color.fromRGBO(135, 201, 231, 1),
    ]
  );





  static const Color bluetheme = Color.fromRGBO(5, 96, 144, 1);
  static const Color bluelight = Color.fromRGBO(10, 108, 158, 1);

  static const Color greenButton = Color.fromRGBO(124, 221, 149, 1);
  static const Color redButton = Color.fromRGBO(255, 76, 88, 1);

  static const Color online = Color.fromRGBO(134, 194, 86, 1);

  static const LinearGradient Confirmed = LinearGradient(
      begin: Alignment(-1.0, -2.0),
      end: Alignment(1.0, 2.0),
      colors: [
        Color.fromRGBO(216, 171, 13, 1),
        Color.fromRGBO(227, 196, 84, 1),
        Color.fromRGBO(244, 231, 186, 1)
      ]
  );

  static const LinearGradient Recovered = LinearGradient(
      begin: Alignment(-1.0, -2.0),
      end: Alignment(1.0, 2.0),
      colors: [
        Color.fromRGBO(73, 161, 3, 1),
        Color.fromRGBO(134, 194, 86, 1),
        Color.fromRGBO(215, 237, 198, 1)
      ]
  );

  static const LinearGradient Death = LinearGradient(
      begin: Alignment(-1.0, -2.0),
      end: Alignment(1.0, 2.0),
      colors: [
        Color.fromRGBO(218, 27, 27, 1),
        Color.fromRGBO(227, 97, 97, 1),
        Color.fromRGBO(239, 188, 188, 1)
      ]
  );
}