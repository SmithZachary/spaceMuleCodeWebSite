import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacemulewebsite/screens/under_construction_screen.dart';
import 'package:spacemulewebsite/theme.dart';
import 'package:spacemulewebsite/themes/theme_provider.dart';

import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      builder: (context, child) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown
            },
          ),
          title: 'spaceMuleCode: Coming Soon Beginner Flutter/Dart Course',
          themeMode: themeChanger.themeMode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const UnderConstructionScreen(),
        );
      },
    );
  }
}
