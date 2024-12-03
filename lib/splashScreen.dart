import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Timer(Duration(seconds: 1), () {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => LogInPage()));
//     });
//     return Scaffold(
//         body: Padding(
//       padding: const EdgeInsets.only(left: 150),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//               width: 200,
//               height: 200,
//               child: Image(image: AssetImage('assets/sticker4.jpg'))),
//           Text(
//             'Align',
//             style: TextStyle(
//                 decoration: TextDecoration.none,
//                 fontSize: 50,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold),
//           )
//         ],
//       ),
//     ));
//   }
// }

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogInPage()));
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 200,
            height: 200,
            child: Image(image: AssetImage('assets/sticker4.jpg'))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Align',
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
