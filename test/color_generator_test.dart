// Import the test package and color_generator class
import 'package:test/test.dart';
import 'package:app_with_changeable_background/color_generator.dart';
// Import material library for access to Color class
import 'package:flutter/material.dart';

void main() {
  group('ColorGenerator', () {
    test('_generatedColor should be white and _contrastColor should be black', () {
      var cg = ColorGenerator();

      expect(cg.getGeneratedColor(), Colors.white);
      expect(cg.getContrastColor(), Colors.black);
    });

    test(
        '_generatedColor should be changed to new random color. '
            '_contrastColor should be black if the _generatedColor is light; '
            'white if _generatedColor is dark', () {
      final cg = ColorGenerator();

      //testing _generatedColor variable
      Color initialColor = cg.getGeneratedColor();
      cg.generate();
      Color generatedColor = cg.getGeneratedColor();
      expect(generatedColor, isNot(initialColor));

      // testing _contrastColor variable
      bool genColorIsLight = (generatedColor.red + generatedColor.green +
          generatedColor.blue) > 384;
      if (genColorIsLight)
        expect(cg.getContrastColor(), Colors.black);
      else
        expect(cg.getContrastColor(), Colors.white);
    });
  });
}
