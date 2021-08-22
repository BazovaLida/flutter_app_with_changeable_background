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

    int red = _random.nextInt(256);
    int green = _random.nextInt(256);
    int blue = _random.nextInt(256);

    _generatedColor = Color.fromRGBO(red, green, blue, 1);

    _contrastColor = (red + green + blue > 384) ? Colors.black : Colors.white;
  }
}
