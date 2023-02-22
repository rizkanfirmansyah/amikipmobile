import 'package:amikipmobile/page/home.dart';
import 'package:amikipmobile/page/mission.dart';
import 'package:amikipmobile/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(
            info: true,
          ),
        ),
        body: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/background/bg_profile.png'),
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
                            padding: const EdgeInsets.only(top: 20),
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
                                            color: Color.fromRGBO(
                                                221, 219, 219, 0.25),
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
                                            color: Color.fromRGBO(
                                                221, 219, 219, 0.25),
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
                                            color: Color.fromRGBO(
                                                221, 219, 219, 0.25),
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
                                            color: Color.fromRGBO(
                                                221, 219, 219, 0.25),
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
                                            color: Color.fromRGBO(
                                                221, 219, 219, 0.25),
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
                                            color: Color.fromRGBO(
                                                221, 219, 219, 0.25),
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
                                            color: Color.fromRGBO(
                                                221, 219, 219, 0.25),
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
                                            color: Color.fromRGBO(
                                                221, 219, 219, 0.25),
                                            borderRadius: BorderRadius.circular(
                                                5) // Color of the border
                                            ),
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                top: 0,
                                                bottom: 12),
                                            child: Text("...",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 28,
                                                    color: Colors.grey))),
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
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                color: Colors.grey,
                                                width: 0.5))),
                                    child: TabBarView(children: <Widget>[
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                          flex: 1,
                                                          child: Image.asset(
                                                              'assets/images/element.png')),
                                                      Expanded(
                                                          flex: 3,
                                                          child: Container(
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: const [
                                                                Text(
                                                                    "Teguh Iqbal",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        color: Color(
                                                                            0xFF121212))),
                                                                Text(
                                                                    "Lvl 1 Penyihir",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        color: Color(
                                                                            0xFF605963))),
                                                              ],
                                                            ),
                                                          )),
                                                      Expanded(
                                                          flex: 1,
                                                          child: Container(
                                                            decoration: const BoxDecoration(
                                                                color: Color(
                                                                    0xFFFAF1E2),
                                                                borderRadius: BorderRadius.only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            10))),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 20,
                                                                      bottom:
                                                                          20,
                                                                      left: 8),
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Image.asset(
                                                                          'assets/images/coin.png'),
                                                                      const SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      const Text(
                                                                        "30",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            color: Color(0xFF70521A)),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  const SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Image.asset(
                                                                          'assets/images/diamond.png'),
                                                                      const SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      const Text(
                                                                          "0",
                                                                          style: TextStyle(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w700,
                                                                              color: Color(0xFF339471)))
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16,
                                                          bottom: 6,
                                                          left: 20,
                                                          right: 20),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Column(
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/love.png',
                                                                  width: 30,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 10,
                                                            child: Column(
                                                              children: [
                                                                SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      LinearPercentIndicator(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width -
                                                                        90,
                                                                    animation:
                                                                        true,
                                                                    lineHeight:
                                                                        12,
                                                                    animationDuration:
                                                                        800,
                                                                    percent:
                                                                        1.0,
                                                                    barRadius:
                                                                        const Radius.circular(
                                                                            10),
                                                                    progressColor:
                                                                        Color(
                                                                            0xFFF86366),
                                                                    backgroundColor:
                                                                        Color(
                                                                            0xFFEFE9E9),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      top: 4,
                                                                      left: 10,
                                                                      right:
                                                                          10),
                                                                  child:
                                                                      SizedBox(
                                                                    width: double
                                                                        .infinity,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: const [
                                                                        Text(
                                                                          "50/50",
                                                                          style: TextStyle(
                                                                              fontSize: 14,
                                                                              color: Color(0xFF928E8E),
                                                                              fontWeight: FontWeight.w600),
                                                                        ),
                                                                        Text(
                                                                          "Kesehatan",
                                                                          style: TextStyle(
                                                                              fontSize: 14,
                                                                              color: Color(0xFF928E8E),
                                                                              fontWeight: FontWeight.w500),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Column(
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/star.png',
                                                                  width: 30,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 10,
                                                            child: Column(
                                                              children: [
                                                                SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      LinearPercentIndicator(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width -
                                                                        90,
                                                                    animation:
                                                                        true,
                                                                    lineHeight:
                                                                        12,
                                                                    animationDuration:
                                                                        800,
                                                                    percent:
                                                                        1.0,
                                                                    barRadius:
                                                                        const Radius.circular(
                                                                            10),
                                                                    progressColor:
                                                                        Color(
                                                                            0xFFF86366),
                                                                    backgroundColor:
                                                                        Color(
                                                                            0xFFEFE9E9),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      top: 4,
                                                                      left: 10,
                                                                      right:
                                                                          10),
                                                                  child:
                                                                      SizedBox(
                                                                    width: double
                                                                        .infinity,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: const [
                                                                        Text(
                                                                          "50/50",
                                                                          style: TextStyle(
                                                                              fontSize: 14,
                                                                              color: Color(0xFF928E8E),
                                                                              fontWeight: FontWeight.w600),
                                                                        ),
                                                                        Text(
                                                                          "Kesehatan",
                                                                          style: TextStyle(
                                                                              fontSize: 14,
                                                                              color: Color(0xFF928E8E),
                                                                              fontWeight: FontWeight.w500),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                      Column(
                                        children: [Text("hehehehe")],
                                      ),
                                      Column(
                                        children: [Text('cob')],
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
