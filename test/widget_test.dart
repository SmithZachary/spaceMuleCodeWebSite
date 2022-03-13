// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:spacemulewebsite/colors.dart';
import 'package:spacemulewebsite/home_page.dart';

void main() {
  testWidgets("Test that the app renders properly in dark theme",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(),
    ));

    final BuildContext context = tester.element(find.byType(MaterialApp));
    final Finder welcomeTextFinder = find.text("spaceMuleCode");
    final Text welcomeText = tester.firstWidget(welcomeTextFinder);
    bool testIsInLightTheme() {
      /// return true if the test is in light theme, else false
      if (Theme.of(context).brightness == Brightness.light) {
        return true;
      }
      return false;
    }

    expect(
      Theme.of(tester.element(find.byWidget(welcomeText))).brightness,
      equals(Brightness.dark),
      reason:
          "Since MaterialApp() was set to dark theme when it was built at tester.pumpWidget(), the MaterialApp should be in dark theme",
    );

    // Now let's test the color of the text
    expect(
      welcomeText.style?.color,
      testIsInLightTheme()
          ? ColorThemes.light.primaryFont
          : ColorThemes.dark.primaryFont,
      reason:
          "When MaterialApp is in light theme, text is black. When Material App is in dark theme, text is white",
    );
  });
}
