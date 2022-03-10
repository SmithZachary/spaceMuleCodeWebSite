import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacemulewebsite/theme.dart';

import 'home_page.dart';

void main() => runApp(new MyApp());

class ThemeChanger with ChangeNotifier {
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;
  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'spaceMuleCode',
            themeMode: themeChanger.themeMode,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
