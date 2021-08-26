// Import the test package and color_generator class
import 'package:test/test.dart';
import 'package:app_with_changeable_background/color_generator.dart';
// Import material library for access to Color class
import 'package:flutter/material.dart';

void main() {
  group('ColorGenerator', () {
    test('_generatedColor should be white', () {
      final cg = ColorGenerator();

      expect(cg.getGeneratedColor(), Colors.white);
    });

    test(
        '_generatedColor should be changed to new random color', () {
      final cg = ColorGenerator();

      Color initialColor = cg.getGeneratedColor();
      cg.generate();
      expect(cg.getGeneratedColor(), isNot(initialColor));
    });
  });
}
