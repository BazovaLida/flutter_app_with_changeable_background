// Import material library for access to Color class
import 'package:flutter/material.dart';
// Import local library ' math' for access to Random class
import 'dart:math';

// Class for definition of randomly generated color
class ColorGenerator {
  Color _generatedColor = Colors.white;
  Color _contrastColor = Colors.black;
  Random _random = Random();

  Color getGeneratedColor() => _generatedColor;

  Color getContrastColor() => _contrastColor;

  // Generate a new color value for _generatedColor and
  // set _contrastColor to white or black depending on luminance of _generatedColor
  void generate() {

    int red = _generatePrimaryColor();
    int green = _generatePrimaryColor();
    int blue = _generatePrimaryColor();

    double op = _generateOpacity();

    _generatedColor = Color.fromRGBO(red, green, blue, op);

    // if background color is light, color for text is black; otherwise - white
    _contrastColor = (red + green + blue > 384) ? Colors.black : Colors.white;
  }

  // generation value from 0 (including 0) to 256(exclusive)
  int _generatePrimaryColor() => _random.nextInt(257) - 1;

  double _generateOpacity() {
    double op = (_random.nextDouble() * 1.1);
    return op > 1.0 ? 1.0 : op;
  }
}
