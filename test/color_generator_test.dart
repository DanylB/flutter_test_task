import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_task/color_generator.dart';

void main() {
  group("ColorGenerator", () {
    test("Random number should be generate ", () {
      final colorGenerator = ColorGenerator();

      colorGenerator.colorGenerator();
      bool colorChanged;
      colorGenerator.randomColor != Colors.white
          ? colorChanged = true
          : colorChanged = false;

      expect(colorChanged, true);
    });
  });
}
