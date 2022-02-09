import 'dart:developer' as dev;
import 'dart:math' as math;
import 'package:flutter/material.dart';

/// random color generation class
class ColorGenerator extends ChangeNotifier {
  /// variable stores generated color (default color is white)
  Color randomColor = Colors.white;
  int _red = 1;
  int _green = 1;
  int _blue = 1;
  final double _opacity = 1.0;

  /// max RGB color intensity 255
  static const int maxColorIntensity = 255;

  /// generate random color
  void colorGenerator() {
    /// random number from 0 to 255
    _red = math.Random().nextInt(maxColorIntensity + 1);

    /// random number from 0 to 255
    _green = math.Random().nextInt(maxColorIntensity + 1);

    /// random number from 0 to 255
    _blue = math.Random().nextInt(maxColorIntensity + 1);

    /// get RGBA color by random generated numbers
    randomColor = Color.fromRGBO(_red, _green, _blue, _opacity);

    printGeneratedColor();

    notifyListeners();
  }

  /// print result color to console
  void printGeneratedColor() {
    dev.log('Color($_red, $_green, $_blue)');
  }
}
