import 'package:amikipmobile/page/home.dart';
import 'package:amikipmobile/page/mission.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Home()));
      } else if (index == 1) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Mission()));
      } else if (index == 2) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Profile()));
      }
    });
  }

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                  Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background/bg_profile.png'),
                        fit: BoxFit.fill)),
                child: Row(children: [
                  Expanded(
                      flex: 6,
                      child: Container(
                        // color: Color,
                        child: Image.asset(
                          'assets/images/hero.png',
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5,
                                            color: Color(0xFFFEAE6E6)),
                                        color:
                                            Color.fromRGBO(221, 219, 219, 0.25),
                                        borderRadius: BorderRadius.circular(
                                            5) // Color of the border
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: Image.asset(
                                        'assets/images/head-1.png',
                                        width: 35,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5,
                                            color: Color(0xFFFEAE6E6)),
                                        color:
                                            Color.fromRGBO(221, 219, 219, 0.25),
                                        borderRadius: BorderRadius.circular(
                                            5) // Color of the border
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: Image.asset(
                                        'assets/images/shirt-1.png',
                                        width: 35,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5,
                                            color: Color(0xFFFEAE6E6)),
                                        color:
                                            Color.fromRGBO(221, 219, 219, 0.25),
                                        borderRadius: BorderRadius.circular(
                                            5) // Color of the border
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 7, right: 7),
                                      child: Image.asset(
                                        'assets/images/hand-1.png',
                                        width: 35,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5,
                                            color: Color(0xFFFEAE6E6)),
                                        color:
                                            Color.fromRGBO(221, 219, 219, 0.25),
                                        borderRadius: BorderRadius.circular(
                                            5) // Color of the border
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: Image.asset(
                                        'assets/images/leg-1.png',
                                        width: 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5,
                                            color: Color(0xFFFEAE6E6)),
                                        color:
                                            Color.fromRGBO(221, 219, 219, 0.25),
                                        borderRadius: BorderRadius.circular(
                                            5) // Color of the border
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(25),
                                      child: SvgPicture.asset(
                                          'assets/icons/none.svg'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5,
                                            color: Color(0xFFFEAE6E6)),
                                        color:
                                            Color.fromRGBO(221, 219, 219, 0.25),
                                        borderRadius: BorderRadius.circular(
                                            5) // Color of the border
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25,
                                          right: 25,
                                          top: 18,
                                          bottom: 18),
                                      child: SvgPicture.asset(
                                          'assets/icons/none.svg'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5,
                                            color: Color(0xFFFEAE6E6)),
                                        color:
                                            Color.fromRGBO(221, 219, 219, 0.25),
                                        borderRadius: BorderRadius.circular(
                                            5) // Color of the border
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Image.asset(
                                        'assets/images/bg_hero.png',
                                        width: 50,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.5,
                                            color: Color(0xFFFEAE6E6)),
                                        color:
                                            Color.fromRGBO(221, 219, 219, 0.25),
                                        borderRadius: BorderRadius.circular(
                                            5) // Color of the border
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25,
                                          right: 25,
                                          top: 15,
                                          bottom: 15),
                                      child: SvgPicture.asset(
                                          'assets/icons/none.svg'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ))
                ]),
              ),
            ),
            Expanded(
              flex: 1,
              child: DefaultTabController(
                  length: 3, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: const TabBar(
                            labelColor: Color(0xFF8F62F1),
                            indicatorColor: Color(0xFF8F62F1),
                            unselectedLabelColor: Color(0xFF8897A8),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                            tabs: [
                              Tab(text: 'Status'),
                              Tab(text: 'Penyimpanan'),
                              Tab(text: 'Toko'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Container(
                                height: 400, //height of TabBarView
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.grey, width: 0.5))),
                                child: TabBarView(children: <Widget>[
                                  Container(
                                    child: Center(
                                      child: Text('Display Tab 1',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ])),
                          ),
                        )
                      ])),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
          currentIndex: 2,
          onTap: _onItemTapped,
          selectedItemColor: Color.fromRGBO(134, 83, 247, 1),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
