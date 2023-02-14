import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mission extends StatefulWidget {
  const Mission({super.key});

  @override
  State<Mission> createState() => _MissionAchievementState();
}

class _MissionAchievementState extends State<Mission> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            labelColor: Color(0xFF8F62F1),
            indicatorColor: Color(0xFF8F62F1),
            unselectedLabelColor: Color(0xFF8897A8),
            tabs: [
              Tab(text: 'Misiii'),
              Tab(text: 'Pencapaian'),
            ],
          ),
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
        body: const TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
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
      ),
    );
  }
}
