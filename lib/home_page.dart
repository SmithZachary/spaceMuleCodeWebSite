import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/theme_selector.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/spacemule.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
              duration: const Duration(milliseconds: 200),
            ),
          ),
          title: const Text('spaceMuleCode'),
        ),
        body: Padding(
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
              ColorThemeSelector(themeChanger: themeChanger),
            ],
          ),
        ),
      ),
    );
  }
}
