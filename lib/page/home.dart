import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      // body: Column(
      //   children: [
      //     SizedBox(
      //       height: 45,
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Column(
      //           children: [
      //             Image.asset('assets/icons/logo.png'),
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             GestureDetector(
      //               onTap: () {
      //                 debugPrint('Bell img tapped');
      //               },
      //               child: Image.asset(
      //                 'assets/icons/bell.png',
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             GestureDetector(
      //               onTap: () {
      //                 debugPrint('Warning icon tapped');
      //               },
      //               child: Image.asset(
      //                 'assets/icons/warning.png',
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
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
