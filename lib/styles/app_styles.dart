import 'package:flutter/material.dart';

class AppStyles {
  static const Color persianPink = Color(0xFFF896D8);
  static const Color heliotrope = Color(0xFFCA7DF9);
  static const Color grey = Colors.black45;

  static const TextStyle bigText = TextStyle(
    fontSize: 40,
    color: grey,
  );
  static const TextStyle smallText = TextStyle(
    color: grey,
  );
  static const TextStyle cardData = TextStyle(fontSize: 20);
  static const subtitle = TextStyle(
    color: Colors.black45,
  );

  static const Widget bigSpace = SizedBox(
    height: 32,
    width: 32,
  );
  static const Widget smallSpace = SizedBox(
    height: 16,
    width: 16,
  );
}
