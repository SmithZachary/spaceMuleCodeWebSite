import 'package:flutter/material.dart';

import '../utils/card_lists.dart';

class CardTile extends StatefulWidget {
  CardTile({Key? key, required this.i}) : super(key: key);

  int i;
  @override
  _CardTileState createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  @override
  Widget build(
    BuildContext context,
  ) {
    var pad = 8.0;
    return Padding(
      padding: EdgeInsets.all(pad),
      child: GestureDetector(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 0.75))
                ],
                image: DecorationImage(
                  image: AssetImage('${titles[widget.i]['tileImage']}'),
                  fit: BoxFit.fill,
                ),
              ),
              height: 300,
              width: 300,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '${titles[widget.i]['tileTitle']}',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget cardItem(int i) {
//   var pad = 8.0;
//   return Padding(
//     padding: EdgeInsets.all(pad),
//     child: GestureDetector(
//       onTap: () {
//         print('Clicked');
//         pad = 30.0;
//         print(pad);
//       },
//       child: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Colors.white,
//               ),
//               borderRadius: const BorderRadius.all(
//                 Radius.circular(20),
//               ),
//               boxShadow: const <BoxShadow>[
//                 BoxShadow(
//                     color: Colors.white,
//                     blurRadius: 5.0,
//                     offset: Offset(0.0, 0.75))
//               ],
//               image: DecorationImage(
//                 image: AssetImage('${titles[i]['tileImage']}'),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             height: 300,
//             width: 300,
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(
//               '${titles[i]['tileTitle']}',
//               style: TextStyle(color: Colors.white, fontSize: 30),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
