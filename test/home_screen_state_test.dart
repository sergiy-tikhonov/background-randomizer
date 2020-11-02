import 'package:background_randomizer/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  test('setting background color should update value for listeners', () {
    final colorWhite = Colors.white;
    final homeScreenState = HomeScreenState();
    homeScreenState.addListener(() {
      expect(homeScreenState.backgroundColor, colorWhite);
    });
    homeScreenState.setBackgroundColor(colorWhite);
  });
}
