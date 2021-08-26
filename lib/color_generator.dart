// Import material library for access to Color class
import 'package:flutter/material.dart';
// Import local library ' math' for access to Random class
import 'dart:math';

// Class for definition of randomly generated color
class ColorGenerator {
  Color _generatedColor = Colors.white;
  Random _random = Random();

  Color getGeneratedColor() => _generatedColor;

  // Generate a new color value for _generatedColor and
  // set _contrastColor to white or black depending on luminance of _generatedColor
  void generate() {
    // generation int value in range [0; 256)
    int _generatePrimaryColor() => _random.nextInt(257) - 1;

    // generation double value in range [0.0; 1.0]
    double _generateOpacity() => _random.nextDouble() * (1 + double.minPositive);

    var gpc = _generatePrimaryColor;
    _generatedColor = Color.fromRGBO(gpc(), gpc(), gpc(), _generateOpacity());
  }
}