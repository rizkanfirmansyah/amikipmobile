import 'dart:ui';

import 'package:amikipmobile/page/mission.dart';
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

class _HomeState extends State<Home> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Home()));
      } else if (index == 1) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Mission()));
      }
    });
  }

  int _selectedIndex = 0;

  bool _isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
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
              debugPrint('Warning img tapped');
            },
            icon: Image.asset('assets/icons/warning.png'),
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
      body: SingleChildScrollView(
        // Banner
        child: Column(
          children: [
            SafeArea(
              minimum: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Visibility(
                    visible: _isShow,
                    child: Stack(
                      children: [
                        Container(
                          child: Card(
                            child: Container(
                              width: 360,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/background/bg_banner.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                // color: Color.fromRGBO(134, 83, 247, 1),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    transform:
                                        Matrix4.translationValues(0, -5, 0),
                                    child: Image.asset(
                                      'assets/images/mage.png',
                                      // height: 70,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Awal yang bagus kawan!',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                      Text(
                                        'Mari pertahankan',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(
                                            () {
                                              _isShow = !_isShow;
                                            },
                                          );
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
                      ],
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
                                text: '3' + '\n',
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
                      // Star Progress
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
                  SizedBox(
                    height: 34,
                  ),
                  // Expanded
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 170,
                          height: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: Color.fromRGBO(231, 236, 243, 1),
                            ),
                          ),
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Current Streak' + '\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(146, 142, 142, 1),
                                ),
                                children: [
                                  TextSpan(
                                    text: '3 Hari 16 Jam',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(96, 89, 99, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          width: 170,
                          height: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: Color.fromRGBO(231, 236, 243, 1),
                            ),
                          ),
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Longest Streak' + '\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(146, 142, 142, 1),
                                ),
                                children: [
                                  TextSpan(
                                    text: '4 Hari 13 Jam',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(96, 89, 99, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  // ElevatedButton
                  Container(
                    width: 360,
                    height: 45,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.thumb_down),
                      label: Text(
                        'Aku Gagal Kali Ini',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(248, 99, 102, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // Popup
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              scrollable: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              titlePadding: EdgeInsets.all(0),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Color.fromRGBO(18, 18, 18, 1),
                                        size: 12,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              content: Container(
                                height: 463,
                                width: 344,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/archer.png'),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'Ulangi Perjalanan',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(18, 18, 18, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Mari kita coba lagi kawan',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(96, 89, 99, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      child: new Center(
                                        child: new Container(
                                          margin:
                                              new EdgeInsetsDirectional.only(
                                                  start: 1.0, end: 1.0),
                                          height: 1.0,
                                          color:
                                              Color.fromRGBO(231, 236, 243, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Text(
                                      'Setel waktu kegagalan',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(96, 89, 99, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 130,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    134, 83, 247, 1),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '02:40 PM',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      96, 89, 99, 1),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'on',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(96, 89, 99, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 130,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    134, 83, 247, 1),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '1 Feb, Rab',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      96, 89, 99, 1),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 28,
                                    ),
                                    Text(
                                      'Tambahkan catatan perjalanan',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color.fromRGBO(96, 89, 99, 1),
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText:
                                            'Perasaan saya saat mengulang onani itu..',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(176, 173, 173, 1),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1,
                                            color:
                                                Color.fromRGBO(96, 89, 99, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 46,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromRGBO(134, 83, 247, 1),
                                        fixedSize: Size.fromWidth(303),
                                        padding: EdgeInsets.all(10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Text(
                                        'Reset Perjalanan',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  // Label Jalankan aktifitas tanpa gelisah
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Jalankan aktifitas tanpa gelisah',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  // ListTile
                  Container(
                    width: 345,
                    height: 286,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 2,
                        color: Color.fromRGBO(231, 236, 243, 1),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 241, 226, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: ListTile(
                            leading: Image.asset('assets/icons/stars.png'),
                            title: Text(
                              'Rutinitas Hari Ini',
                              style: TextStyle(
                                color: Color.fromRGBO(112, 82, 26, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Container(
                              transform: Matrix4.translationValues(-15, 0, 0),
                              child: Image.asset('assets/icons/trailing/4.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: new Center(
                            child: new Container(
                              margin: new EdgeInsetsDirectional.only(
                                  start: 1.0, end: 1.0),
                              height: 1.0,
                              color: Color.fromRGBO(231, 236, 243, 1),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Image.asset('assets/icons/heart.png'),
                          title: Container(
                            transform: Matrix4.translationValues(-15, 0, 0),
                            child: Text(
                              'Pertumbuhan emosi',
                              style: TextStyle(
                                color: Color.fromRGBO(96, 89, 99, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            icon:
                                Image.asset('assets/icons/trailing/arrow.png'),
                            onPressed: () {},
                          ),
                        ),
                        ListTile(
                          leading: Image.asset('assets/icons/brain.png'),
                          title: Container(
                            transform: Matrix4.translationValues(-15, 0, 0),
                            child: Text(
                              'Kontrol Pikiran',
                              style: TextStyle(
                                color: Color.fromRGBO(96, 89, 99, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            icon:
                                Image.asset('assets/icons/trailing/check.png'),
                            onPressed: () {},
                          ),
                        ),
                        ListTile(
                          leading: Image.asset('assets/icons/sign.png'),
                          title: Container(
                            transform: Matrix4.translationValues(-15, 0, 0),
                            child: Text(
                              'Pilih Jalanmu',
                              style: TextStyle(
                                color: Color.fromRGBO(96, 89, 99, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            icon:
                                Image.asset('assets/icons/trailing/arrow.png'),
                            onPressed: () {},
                          ),
                        ),
                        ListTile(
                          leading: Image.asset('assets/icons/wind.png'),
                          title: Container(
                            transform: Matrix4.translationValues(-15, 0, 0),
                            child: Text(
                              'Ambil nafas dalam',
                              style: TextStyle(
                                color: Color.fromRGBO(96, 89, 99, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            icon:
                                Image.asset('assets/icons/trailing/arrow.png'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  // ListTile 2
                  Container(
                    width: 345,
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 2,
                        color: Color.fromRGBO(231, 236, 243, 1),
                      ),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/icons/stars_2.png'),
                      title: Container(
                        transform: Matrix4.translationValues(-15, 0, 0),
                        child: Text(
                          'Opsional',
                          style: TextStyle(
                            color: Color.fromRGBO(96, 89, 99, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      trailing: Container(
                        transform: Matrix4.translationValues(-15, 0, 0),
                        child: Image.asset('assets/icons/trailing/2.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  // ListTile 3
                  Container(
                    width: 345,
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 2,
                        color: Color.fromRGBO(231, 236, 243, 1),
                      ),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/icons/stars_3.png'),
                      title: Container(
                        transform: Matrix4.translationValues(-15, 0, 0),
                        child: Text(
                          'Review hari kamu',
                          style: TextStyle(
                            color: Color.fromRGBO(96, 89, 99, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Image.asset('assets/icons/trailing/arrow.png'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/quotes.png'),
                        SizedBox(
                          height: 6,
                        ),
                        Image.asset('assets/images/name.png'),
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/chara_pack.png',
              fit: BoxFit.cover,
            ),
          ],
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
        onTap: _onItemTapped,
        selectedItemColor: Color.fromRGBO(134, 83, 247, 1),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
