import 'dart:math';

import 'package:flutter/material.dart';

/// Service class for getting random color.
class ColorRandomizer {
  /// Generates random ARGB color component (by default from 0 to 255).
  static int _getRandomColorComponent(int upperValueBound) =>
      Random().nextInt(upperValueBound);

  /// Generates random color.
  ///
  /// The optional parameter [upperValueBound] is used to initialize upper value bound
  /// Though in this application this parameter was not necessary, but it was used in unit test
  /// By default it equals to 256.
  static Color getRandomColor([int upperValueBound = 256]) {
    // Map is used just for convenience and for keeping code DRY
    var colorComponents = {"alpha": 0, "red": 0, "green": 0, "blue": 0};
    colorComponents.forEach((key, value) {
      colorComponents[key] = _getRandomColorComponent(upperValueBound);
    });
    return Color.fromARGB(colorComponents["alpha"], colorComponents["red"],
        colorComponents["green"], colorComponents["blue"]);
  }
}
