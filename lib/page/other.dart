import 'package:amikipmobile/page/community.dart';
import 'package:amikipmobile/page/home.dart';
import 'package:amikipmobile/page/mission.dart';
import 'package:amikipmobile/page/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Other extends StatefulWidget {
  const Other({super.key});

  @override
  State<Other> createState() => _OtherState();
}

class _OtherState extends State<Other> {
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(
                height: 77,
              ),
              ListTile(
                leading: Image.asset('assets/images/profile.png'),
                title: Text(
                  'Teguh Iqbal',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  '@latolato',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color.fromRGBO(146, 142, 142, 1),
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 88,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 28,
                      width: 84.42,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(53, 70, 101, 1),
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          top: 2,
                          bottom: 2,
                          right: 4,
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/staff.svg'),
                            SizedBox(
                              width: 6.42,
                            ),
                            Text(
                              'Penyihir',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 49,
              ),
              InkWell(
                child: Container(
                  width: 344,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 249, 249, 0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/warning.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Saya merasa tergoda',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 52,
                      ),
                      Image.asset('assets/icons/trailing/arrow.png')
                    ],
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                child: Container(
                  width: 344,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 249, 249, 0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/meditation.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Meditasi',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 129,
                      ),
                      Container(
                        width: 78,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 241, 226, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            top: 19,
                            bottom: 19,
                            right: 19,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/star.png',
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromRGBO(112, 82, 26, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                child: Container(
                  width: 344,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 249, 249, 0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/book.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Catatan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 129,
                      ),
                      Container(
                        width: 78,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 241, 226, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 19,
                            top: 20,
                            bottom: 20,
                            right: 19,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/coin.png',
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromRGBO(112, 82, 26, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                child: Container(
                  width: 344,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 249, 249, 0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/lamp.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Pembelajaran',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 83,
                      ),
                      Container(
                        width: 78,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 241, 226, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            top: 19,
                            bottom: 19,
                            right: 19,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/star.png',
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromRGBO(112, 82, 26, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                child: Container(
                  width: 344,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 249, 249, 0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/music.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Motivasi',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 129,
                      ),
                      Container(
                        width: 78,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 241, 226, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 19,
                            top: 20,
                            bottom: 20,
                            right: 19,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/coin.png',
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '2',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromRGBO(112, 82, 26, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                child: new Center(
                  child: new Container(
                    margin:
                        new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    height: 1.0,
                    color: Color.fromRGBO(206, 206, 206, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                child: Container(
                  width: 344,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 249, 249, 0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/setting.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Pengaturan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 133,
                      ),
                      Image.asset('assets/icons/trailing/arrow.png')
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      // Navbar
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
        currentIndex: 4,
        onTap: _onItemTapped,
        selectedItemColor: Color.fromRGBO(134, 83, 247, 1),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
