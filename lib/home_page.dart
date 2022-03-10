import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacemulewebsite/theme.dart';

import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedCrossFade(
            crossFadeState: Theme.of(context).brightness == Brightness.light
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstChild: Image.asset(
              'assets/sun.png',
              width: 200,
            ),
            secondChild: Image.asset(
              'assets/moon.png',
              width: 200,
            ),
            duration: Duration(milliseconds: 200),
          ),
        ),
        title: const Text('spaceMuleCode'),
      ),
      body: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  child: const Text('+ Contact Us'),
                  onPressed: () {},
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio<ThemeMode>(
                        groupValue: themeChanger.themeMode,
                        value: ThemeMode.light,
                        onChanged: themeChanger.setTheme,
                      ),
                      const Text('Light Mode'),
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
                      const Text('Dark Mode'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
