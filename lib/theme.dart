import 'package:flutter/material.dart';
import 'package:spacemulewebsite/themes/radio_theme.dart';

import 'colors.dart';

class AppTheme {
  static final ThemeData lightTheme = _buildLightTheme();
  static final ThemeData darkTheme = _buildDarkTheme();
  static final ThemeData midnightTheme = _buildMidnightTheme();

  static ThemeData _buildLightTheme() {
    final base = ThemeData.light();
    return base.copyWith(
        unselectedWidgetColor: ColorThemes.light.background,
        brightness: Brightness.light,
        primaryColor: ColorThemes.light.primary,
        errorColor: ColorThemes.light.alerts,
        backgroundColor: ColorThemes.light.onBackground,
        scaffoldBackgroundColor: ColorThemes.light.background,
        dividerColor: ColorThemes.light.stroke,
        colorScheme: base.colorScheme.copyWith(
          primary: ColorThemes.light.primary,
        ),
        textTheme: base.textTheme.apply(fontFamily: 'Assistant'),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: ColorThemes.light.primary,
                maximumSize: const Size(100, 40))),
        appBarTheme: AppBarTheme(
          // titleTextStyle: headLine1TextStyle,
          centerTitle: false,
          brightness: Brightness.dark,
          color: ColorThemes.light.onBackground,
          elevation: 4,
          iconTheme: IconThemeData(
            color: ColorThemes.light.secondaryFont,
          ),
          actionsIconTheme: IconThemeData(
            color: ColorThemes.light.secondaryFont,
          ),
        ),
        // radioTheme: lightRadioTheme,
        listTileTheme: ListTileThemeData(
          textColor: ColorThemes.light.primaryFont,
        ));
  }

  static ThemeData _buildMidnightTheme() {
    final base = ThemeData.dark();
    return base.copyWith(
        brightness: Brightness.dark,
        primaryColor: ColorThemes.midnight.primary,
        errorColor: ColorThemes.midnight.alerts,
        backgroundColor: ColorThemes.midnight.onBackground,
        scaffoldBackgroundColor: ColorThemes.midnight.onBackground,
        dividerColor: ColorThemes.midnight.stroke,
        colorScheme: base.colorScheme.copyWith(
          primary: ColorThemes.midnight.primary,
        ),
        textTheme: base.textTheme.apply(fontFamily: 'Assistant'),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: ColorThemes.midnight.primary,
                maximumSize: const Size(100, 40))),
        appBarTheme: AppBarTheme(
          // titleTextStyle: headLine1TextStyle,
          centerTitle: false,
          brightness: Brightness.dark,
          color: ColorThemes.midnight.onBackground,
          elevation: 0,
          iconTheme: IconThemeData(color: ColorThemes.midnight.secondaryFont),
          actionsIconTheme:
              IconThemeData(color: ColorThemes.midnight.secondaryFont),
        ),
        listTileTheme: ListTileThemeData(
          textColor: ColorThemes.midnight.primaryFont,
        ));
  }

  static ThemeData _buildDarkTheme() {
    final base = ThemeData.dark();
    return base.copyWith(
        brightness: Brightness.dark,
        primaryColor: ColorThemes.dark.primary,
        errorColor: ColorThemes.dark.alerts,
        backgroundColor: ColorThemes.dark.onBackground,
        scaffoldBackgroundColor: ColorThemes.dark.background,
        dividerColor: ColorThemes.dark.stroke,
        colorScheme: base.colorScheme.copyWith(
          primary: ColorThemes.dark.primary,
        ),
        textTheme: base.textTheme.apply(
          fontFamily: 'Assistant',
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: ColorThemes.dark.primary,
                maximumSize: const Size(100, 40))),
        appBarTheme: AppBarTheme(
          // titleTextStyle: headLine1TextStyle,
          centerTitle: false,
          brightness: Brightness.dark,
          color: ColorThemes.dark.onBackground,
          elevation: 0,
          iconTheme: IconThemeData(color: ColorThemes.dark.secondaryFont),
          actionsIconTheme:
              IconThemeData(color: ColorThemes.dark.secondaryFont),
        ),
        listTileTheme: ListTileThemeData(
          textColor: ColorThemes.dark.primaryFont,
        ));
  }
}

enum ThemeType { Light, Dark, Midnight }

class ThemeNotifier extends ChangeNotifier {
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;
  void setTheme(themeMode) {
    _themeMode = themeMode;
    print(themeMode);
    notifyListeners();
  }

  // var _userTheme = ThemeMode.dark;

  // ThemeMode get theme {
  //   switch (_userTheme) {
  //     case ThemeMode.Light:
  //       return ThemeMode.light;
  //     case ThemeType.Dark:
  //       return LoopTheme.darkTheme;
  //     case ThemeType.Midnight:
  //     default:
  //       return LoopTheme.lightTheme;
  //   }
  // }

  // void setTTheme(theme) {
  //   _userTheme = theme;
  //   notifyListeners();
  // }

  final String key = "theme";
  // late SharedPreferences _prefs;

  ThemeNotifier() {
    _loadFromPrefs();
  }

  toggleTheme() {
    _saveToPrefs();
    notifyListeners();
  }

  void _initPrefs() async {
    // if (_prefs == null) _prefs = await SharedPreferences.getInstance();
  }

  void _loadFromPrefs() async {
    await _initPrefs;
    // final _theme = _prefs.getString(key);
    //
    // _userTheme =
    //     ThemeType.values.firstWhereOrNull((t) => t.toString() == _theme) ??
    //         _userTheme;

    notifyListeners();
  }

  void _saveToPrefs() async {
    await _initPrefs;
    // await _prefs.setString(key, _userTheme.toString());
  }
}
