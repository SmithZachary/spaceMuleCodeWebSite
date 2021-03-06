import 'package:flutter/material.dart';

import '../main.dart';
import '../themes/theme_provider.dart';

class ColorThemeSelector extends StatelessWidget {
  const ColorThemeSelector({
    Key? key,
    required this.themeChanger,
  }) : super(key: key);

  final ThemeChanger themeChanger;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Radio<ThemeMode>(
              groupValue: themeChanger.themeMode,
              value: ThemeMode.light,
              onChanged: themeChanger.setTheme,
            ),
            const Text(
              'Light Mode',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Radio<ThemeMode>(
              groupValue: themeChanger.themeMode,
              value: ThemeMode.dark,
              onChanged: themeChanger.setTheme,
            ),
            const Text(
              'Dark Mode',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
