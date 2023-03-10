import 'package:amikipmobile/page/community.dart';
import 'package:amikipmobile/page/home.dart';
import 'package:amikipmobile/page/other.dart';
import 'package:amikipmobile/page/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mission extends StatefulWidget {
  const Mission({super.key});

  @override
  State<Mission> createState() => _MissionAchievementState();
}

class _MissionAchievementState extends State<Mission> {
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
      } else if (index == 3) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Community()));
      } else if (index == 4) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Other()));
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
          bottom: const TabBar(
            labelColor: Color(0xFF8F62F1),
            indicatorColor: Color(0xFF8F62F1),
            unselectedLabelColor: Color(0xFF8897A8),
            labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            tabs: [
              Tab(text: 'Misi'),
              Tab(text: 'Pencapaian'),
            ],
          ),
          title: Image.asset('assets/icons/logo.png'),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('Bell img tapped');
              },
              icon: Image.asset('assets/icons/bell.png'),
            ),
            IconButton(
              onPressed: () {
                debugPrint('Profile img tapped');
              },
              icon: Image.asset('assets/icons/profile.png'),
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 17, right: 17, bottom: 8, top: 17),
                        child: Container(
                          height: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFA6DAF5),
                                    Color(0xFF915BF1),
                                    Color(0xFFFACED1),
                                  ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 16, right: 16),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/blink.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          top: 3,
                                          bottom: 3),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text('Selesaikan 5 Misi',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF121212))),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: 200,
                                            height: 8,
                                            color: const Color(0xFFEEEEF0),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    221, 143, 32, 0.2),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3,
                                                  bottom: 3,
                                                  left: 4,
                                                  right: 4),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                      'assets/images/coin.png',
                                                      width: 15,
                                                      height: 15),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text('10',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Color(
                                                              0xFF70521A)))
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3,
                                                  bottom: 3,
                                                  left: 8,
                                                  right: 4),
                                              child: Row(
                                                children: [
                                                  Text('0/5',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Color(
                                                              0xFF8653F7)))
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i in text)
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 17, right: 17, bottom: 8),
                          child: Container(
                            height: 160,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Container(
                                        constraints: const BoxConstraints(
                                            minWidth: 100, maxWidth: 228),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              constraints: const BoxConstraints(
                                                  minWidth: 100, maxWidth: 120),
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      101, 31, 255, 0.1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2,
                                                    bottom: 2,
                                                    left: 9,
                                                    right: 9),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SvgPicture.asset(
                                                          'assets/icons/repeat.svg'),
                                                      Spacer(),
                                                      const Text('Misi Harian',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color(
                                                                  0xFF8653F7)))
                                                    ]),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text('Hindari Pemicu',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFF121212))),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                                'Tidak menonton konten dewasa selama 24 jam ',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF928E8E))),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFAF1E2),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10))),
                                      constraints: const BoxConstraints(
                                          minWidth: 60, maxWidth: 90),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/images/coin.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Text('5',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xFF70521A)))
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/images/star.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                const SizedBox(
                                                  width: 6,
                                                ),
                                                const Text('10',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xFF70521A)))
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 15, left: 24, right: 24),
                    child: Row(
                      children: const [
                        Text(
                          "Total Pencapaian",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF605963)),
                        ),
                        Spacer(),
                        Text("2/60",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF121212))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, left: 10, right: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white, // Color of the container
                          borderRadius:
                              BorderRadius.circular(10), // Radius of the border
                          border: Border.all(
                            width: 1.5,
                            color: Color.fromRGBO(
                                134, 83, 247, 0.5), // Color of the border
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset('assets/images/heart.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Waktu Kebangkitan",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF121212))),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 120,
                                  child: const Text(
                                    "Pertahankan Kesehatan Penuh selama 3 Hari",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF928E8E)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, left: 10, right: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white, // Color of the container
                          borderRadius:
                              BorderRadius.circular(10), // Radius of the border
                          border: Border.all(
                            width: 1.5,
                            color: Color.fromRGBO(
                                134, 83, 247, 0.5), // Color of the border
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset('assets/images/coins.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Keuntungan Pertama",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF121212))),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 120,
                                  child: const Text(
                                    "Dapatkan koin untuk pertama kalinya",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF928E8E)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, left: 10, right: 10),
                    child: Opacity(
                      opacity: 0.65,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 30,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white, // Color of the container
                          borderRadius:
                              BorderRadius.circular(10), // Radius of the border
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Image.asset('assets/images/starpink.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Master Pengendali Diri",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF121212))),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 120,
                                    child: const Text(
                                      "Naikkan level kendari dirimu menjadi level 10",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF928E8E)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, left: 10, right: 10),
                    child: Opacity(
                      opacity: 0.65,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 30,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white, // Color of the container
                          borderRadius:
                              BorderRadius.circular(10), // Radius of the border
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Image.asset('assets/images/crowd.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Sang Raja",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF121212))),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 120,
                                    child: const Text(
                                      "Tidak melakukan onani selama 90 hari",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF928E8E)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, left: 10, right: 10),
                    child: Opacity(
                      opacity: 0.65,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 30,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white, // Color of the container
                          borderRadius:
                              BorderRadius.circular(10), // Radius of the border
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Image.asset('assets/images/clock.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Berpacu dengan waktu",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF121212))),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 120,
                                    child: const Text(
                                      "Selesaikan meditasi mu dalam waktu 30 menit",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF928E8E)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
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
          currentIndex: 1,
          onTap: _onItemTapped,
          selectedItemColor: Color.fromRGBO(134, 83, 247, 1),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
