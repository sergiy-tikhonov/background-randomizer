import 'package:flutter/material.dart';

import 'package:test/test.dart';
import 'package:background_randomizer/color_randomizer.dart';

void main() {
  group('Color randomizer', () {
    test('Transparent color should be generated', () {
      final color = ColorRandomizer.getRandomColor(1);
      expect(color, Colors.transparent);
    });

    test('Two different calls should generate different colors', () {
      // Of course, there is a little chance generated colors will be the same, it's just for rough test
      final colorFirst = ColorRandomizer.getRandomColor();
      final colorSecond = ColorRandomizer.getRandomColor();
      expect(colorFirst == colorSecond, isFalse);
    });
  });
}
