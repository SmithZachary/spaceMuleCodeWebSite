import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacemulewebsite/components/_components.dart';
import 'package:spacemulewebsite/themes/theme_provider.dart';
import 'package:spacemulewebsite/utils/card_lists.dart';

import 'components/cardTile.dart';
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
        bottomNavigationBar: bottomBar(),
      ),
    );
  }
}

class bottomBar extends StatefulWidget {
  bottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  @override
  Widget build(BuildContext context) {
    var itemHeight = 300.0;
    var itemWidth = 300.0;
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      }),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: itemHeight,
          width: itemWidth,
          child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: titles.length,
              itemBuilder: (BuildContext context, int position) {
                return CardTile(
                  i: position,
                );
                //cardItem(position);
              }),
        ),
      ),
    );
  }
}
