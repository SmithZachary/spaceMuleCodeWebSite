import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rive/rive.dart';

class UnderConstructionScreen extends StatelessWidget {
  const UnderConstructionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          title: Text('spaceMuleCode'),
        ),
        body: const Center(
          child: RiveAnimation.network(
            'https://cdn.rive.app/animations/vehicles.riv',
            fit: BoxFit.cover,
            stateMachines: ['bumpy'],
          ),
//           Column(children: [
//             const Text(
//               '''Thanks For Visiting
// I am currently rebuilding my site with
//  an exciting new technology!''',
//               style: TextStyle(color: Colors.white, fontSize: 20),
//               textAlign: TextAlign.center,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(30.0),
//               child: Container(
//                 color: Colors.white.withOpacity(0.3),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child:
//
//                   Column(
//                     children: const [
//                       RiveAnimation.network(
//                         'https://cdn.rive.app/animations/vehicles.riv',
//                         fit: BoxFit.cover,
//                       ),
//                       Text(
//                         'Whats New?',
//                         style: TextStyle(color: Colors.white, fontSize: 60),
//                       ),
//                       Text(
//                         '''Starting in April there will be a free,
// 5 week,
// intro to Flutter course.''',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(color: Colors.white, fontSize: 40),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Text(
//               'Find me on Twitter or LinkedIn for more information ⬇',
//               style: TextStyle(color: Colors.white),
//             ),
//           ]),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.grey,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.grey,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.grey,
                      ))
                ],
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'spaceMuleCode © 2022',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
