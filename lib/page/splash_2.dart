import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Splash_2 extends StatefulWidget {
  const Splash_2({super.key});

  @override
  State<Splash_2> createState() => _Splash_2State();
}

class _Splash_2State extends State<Splash_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background/bg_profile.png'),
                      fit: BoxFit.contain),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Image.asset('assets/images/viking_full.png'),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // SizedBox(
            //   height: 76,
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         child: Image.asset('assets/images/viking_full.png'),
            //       ),
            //     ),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Container(
            //             height: 100,
            //             width: 100,
            //             color: Colors.black,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
