import 'package:flutter/material.dart';

/// Contains state of home screen. Provider pattern is used.
///
/// Field [backgroundColor] holds the current background color of the home screen.
class HomeScreenState extends ChangeNotifier {
  var _backgroundColor;

  /// Current background color of the home screen.
  Color get backgroundColor => _backgroundColor;

  /// Sets the state with the current background color and notifies listeners.
  void setBackgroundColor(Color color) {
    _backgroundColor = color;
    notifyListeners();
  }
}
