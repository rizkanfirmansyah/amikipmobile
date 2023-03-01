import 'package:amikipmobile/page/community.dart';
import 'package:amikipmobile/page/home.dart';
import 'package:amikipmobile/page/mission.dart';
import 'package:amikipmobile/page/other.dart';
import 'package:amikipmobile/page/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:developer';

class BottomBarWidget extends StatefulWidget {
  final int ID;
  const BottomBarWidget({Key? key, required this.ID}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  int _selectedIndex = 0;
  void _onItemTapped(int indexs) {
    setState(() {
      _selectedIndex = indexs;
      if (_selectedIndex == indexs) {
      } else {
        if (indexs == 0) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Home()));
        } else if (indexs == 1) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Mission()));
        } else if (indexs == 2) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Profile()));
        } else if (indexs == 3) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Community()));
        } else if (indexs == 4) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Other()));
        }
      }
    });
  }

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
      currentIndex: widget.ID,
      onTap: _onItemTapped,
      selectedItemColor: const Color.fromRGBO(134, 83, 247, 1),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
    );
  }
}
