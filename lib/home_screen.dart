import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:background_randomizer/home_screen_state.dart';

import 'color_randomizer.dart';
import 'generated/l10n.dart';

/// Home screen for application.
///
/// Includes just AppBar and centered Text (localized to three languages - EN, RU, UK)
/// After tap on any place inside screen (including AppBar)
/// background color is changed to random color.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // State-management pattern Provider is used just for trying it in practice
    return ChangeNotifierProvider(
      create: (context) => HomeScreenState(),
      child: Consumer<HomeScreenState>(
        // Background's color should be changed even on a tap at the AppBar
        // ("anywhere on the screen" from the task's description)
        builder: (context, backgroundState, child) => GestureDetector(
          child: Scaffold(
            appBar: AppBar(title: Text(S.of(context).homeScreenAppBarTitle)),
            body: HomeScreenBody(),
          ),
          onTap: () => backgroundState
              .setBackgroundColor(ColorRandomizer.getRandomColor()),
        ),
      ),
    );
  }
}

/// Body of home screen.
class HomeScreenBody extends StatefulWidget {
  @override
  _ScreenBodyState createState() => _ScreenBodyState();
}

class _ScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenState>(
      builder: (context, backgroundState, child) => Container(
        decoration: BoxDecoration(color: backgroundState.backgroundColor),
        child: Center(
          child: Text(
            S.of(context).greetingTextTitle,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
