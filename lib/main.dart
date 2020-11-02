// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Localization to 3 languages is used (EN, RU, UK).
      // By default is used locale from device's settings.
      localizationsDelegates: [
        // Intl Plugin generates S class (contains localized strings).
        S.delegate,
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // Callback needed for updating locale according to device's settings
      localeResolutionCallback:
          (Locale locale, Iterable<Locale> supportedLocales) {
        return locale;
      },
      supportedLocales: S.delegate.supportedLocales,
      home: HomeScreen(),
    );
  }
}
