import 'package:amikipmobile/page/community.dart';
import 'package:amikipmobile/page/home.dart';
import 'package:amikipmobile/page/mission.dart';
import 'package:amikipmobile/page/other.dart';
import 'package:amikipmobile/widgets/appbar.dart';
import 'package:amikipmobile/widgets/bottombar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
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
  final List<String> items = [
    'Kepala',
    'Baju',
    'Tangan',
    'Sepatu',
  ];
  String? selectedValue;

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3];
    final List<String> equipments = [
      'Kepala',
      'Baju',
      'Tangan',
      'Sepatu',
    ];
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(
            info: false,
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
                                                          bottom: 16,
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
                                                                        0.1,
                                                                    barRadius:
                                                                        const Radius.circular(
                                                                            10),
                                                                    progressColor:
                                                                        Color(
                                                                            0xFFFFB942),
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
                                                                          "5/50",
                                                                          style: TextStyle(
                                                                              fontSize: 14,
                                                                              color: Color(0xFF928E8E),
                                                                              fontWeight: FontWeight.w600),
                                                                        ),
                                                                        Text(
                                                                          "Kendali Diri",
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
                                                                  'assets/images/stats.png',
                                                                  width: 30,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 10,
                                                            child: Column(
                                                              children: [
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
                                                                              .end,
                                                                      children: const [
                                                                        Text(
                                                                          "Dibuka saat kamu level 10",
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
                                      Container(
                                        color: Colors.white,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              for (var i in text)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15,
                                                          left: 7.5,
                                                          right: 7.5),
                                                  child: Row(
                                                      children: equipments
                                                          .map(
                                                            (item) => Expanded(
                                                              flex: 1,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            7.5,
                                                                        right:
                                                                            7.5),
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      constraints: const BoxConstraints(
                                                                          minHeight:
                                                                              70,
                                                                          minWidth: double
                                                                              .infinity,
                                                                          maxHeight:
                                                                              70),
                                                                      decoration: BoxDecoration(
                                                                          color: const Color(
                                                                              0xFFF8F8F8),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5) // Color of the border
                                                                          ),
                                                                      child: Padding(
                                                                          padding: const EdgeInsets.all(20),
                                                                          child: (() {
                                                                            if (item ==
                                                                                'Kepala') {
                                                                              return Image.asset(
                                                                                'assets/images/head-1.png',
                                                                                width: 30,
                                                                              );
                                                                            } else if (item ==
                                                                                'Baju') {
                                                                              return Image.asset(
                                                                                'assets/images/shirt-1.png',
                                                                                width: 30,
                                                                              );
                                                                            } else if (item ==
                                                                                'Tangan') {
                                                                              return Image.asset(
                                                                                'assets/images/hand-1.png',
                                                                                width: 30,
                                                                              );
                                                                            } else if (item ==
                                                                                'Sepatu') {}
                                                                            return Image.asset(
                                                                              'assets/images/leg-1.png',
                                                                              width: 30,
                                                                            );
                                                                          }())),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          top:
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        item,
                                                                        style: const TextStyle(
                                                                            fontSize: 12,
                                                                            color: Color(
                                                                              0xFF928E8E,
                                                                            ),
                                                                            fontWeight: FontWeight.w500),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                          .toList()),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(18),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/diamond.png'),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const Text("0",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color(
                                                                  0xFF339471)))
                                                    ],
                                                  ),
                                                  const SizedBox(width: 20),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/coin.png'),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const Text(
                                                        "30",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: Color(
                                                                0xFF70521A)),
                                                      )
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/material.png'),
                                                      const SizedBox(width: 5),
                                                      DropdownButtonHideUnderline(
                                                        child: DropdownButton2(
                                                          hint: Text(
                                                            'Semua',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color: Theme.of(
                                                                      context)
                                                                  .hintColor,
                                                            ),
                                                          ),
                                                          items: items
                                                              .map((item) =>
                                                                  DropdownMenuItem<
                                                                      String>(
                                                                    value: item,
                                                                    child: Text(
                                                                      item,
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          color:
                                                                              Color(0xFF928E8E)),
                                                                    ),
                                                                  ))
                                                              .toList(),
                                                          value: selectedValue,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              selectedValue =
                                                                  value
                                                                      as String;
                                                            });
                                                          },
                                                          buttonHeight: 40,
                                                          buttonWidth: 100,
                                                          itemHeight: 40,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 7.5,
                                                              right: 7.5),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            constraints:
                                                                const BoxConstraints(
                                                                    minHeight:
                                                                        70,
                                                                    minWidth: double
                                                                        .infinity,
                                                                    maxHeight:
                                                                        70),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xFFF8F8F8),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5) // Color of the border
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(20),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/head-1.png',
                                                                width: 30,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 4),
                                                            child: Text(
                                                              "item",
                                                              style:
                                                                  const TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color:
                                                                          Color(
                                                                        0xFF928E8E,
                                                                      ),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 7.5,
                                                              right: 7.5),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            constraints:
                                                                const BoxConstraints(
                                                                    minHeight:
                                                                        70,
                                                                    minWidth: double
                                                                        .infinity,
                                                                    maxHeight:
                                                                        70),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xFFF8F8F8),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5) // Color of the border
                                                                ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(20),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/head-1.png',
                                                                width: 30,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 4),
                                                            child: Text(
                                                              "item",
                                                              style:
                                                                  const TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color:
                                                                          Color(
                                                                        0xFF928E8E,
                                                                      ),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ])),
                              ),
                            )
                          ])),
                ),
              ]),
        ),
        bottomNavigationBar: const BottomBarWidget(ID: 2));
  }
}
