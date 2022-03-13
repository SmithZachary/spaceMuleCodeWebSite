import 'package:flutter/material.dart';

import '../utils/card_lists.dart';

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
