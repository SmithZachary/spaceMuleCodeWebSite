import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacemulewebsite/components/_components.dart';
import 'package:spacemulewebsite/themes/theme_provider.dart';
import 'package:spacemulewebsite/utils/card_lists.dart';

import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/spacemulecode.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: AnimatedLightDark(),
          ),
          title: const Text('spaceMuleCode'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
            ],
          ),
        ),
        bottomNavigationBar: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          }),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: titles.length,
                  itemBuilder: (BuildContext context, int position) {
                    return cardItem(position);
                  }),
            ),
          ),
        ),
      ),
    );
  }
}

List cardTitles = <String>[
  "assets/spacemulecode.png",
  "assets/spacemulecode.png",
  "assets/spacemulecode.png",
];

Widget cardItem(int i) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                    color: Colors.white,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 0.75))
              ],
              image: DecorationImage(
                image: AssetImage('${titles[i]['tileTitle']}'),
                fit: BoxFit.fill,
              ),
            ),
            height: 300,
            width: 300,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Button Title',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ],
      ),
    ),
  );
}
