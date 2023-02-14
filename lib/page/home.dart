import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final ValueNotifier<double> _valueNotifier = ValueNotifier(25);

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: Image.asset('assets/icons/logo.png'),
        actions: [
          GestureDetector(
            onTap: () {
              debugPrint('Bell img tapped');
            },
            child: Image.asset('assets/icons/bell.png'),
          ),
          GestureDetector(
            onTap: () {
              debugPrint('Warning img tapped');
            },
            child: Image.asset('assets/icons/warning.png'),
          ),
          GestureDetector(
            onTap: () {
              debugPrint('Profile img tapped');
            },
            child: Image.asset('assets/icons/profile.png'),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        // Banner
        child: SafeArea(
          minimum: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                child: Card(
                  child: Container(
                    width: 360,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(134, 83, 247, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          transform: Matrix4.translationValues(0, -5, 0),
                          child: Image.asset(
                            'assets/images/mage.png',
                            height: 70,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Awal yang bagus kawan!',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Text(
                              'Mari pertahankan',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                debugPrint('Close btn tapped');
                              },
                              icon: Icon(Icons.close),
                              iconSize: 9,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              // CircularProgress
              Stack(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: CircularPercentIndicator(
                      radius: 115,
                      lineWidth: 4,
                      startAngle: 180,
                      progressColor: Color.fromRGBO(41, 55, 78, 1),
                      animation: true,
                      percent: 0.25,
                      animationDuration: 1500,
                      center: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: '3 \n',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 72,
                            ),
                            children: [
                              TextSpan(
                                text: 'Hari',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 10,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      width: 43,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(221, 143, 32, 0.1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/icons/vector.png'),
                          Text(
                            '6',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(112, 82, 26, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Navbar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Misi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: 'Komunitas',
          ),
          BottomNavigationBarItem(
            icon: Icon((Icons.menu)),
            label: 'Lainnya',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color.fromRGBO(134, 83, 247, 1),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
