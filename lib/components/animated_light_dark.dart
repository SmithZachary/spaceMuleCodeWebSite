import 'package:flutter/material.dart';

class AnimatedLightDark extends StatelessWidget {
  const AnimatedLightDark({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
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
    );
  }
}
