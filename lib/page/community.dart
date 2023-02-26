import 'package:amikipmobile/page/home.dart';
import 'package:amikipmobile/page/mission.dart';
import 'package:amikipmobile/page/other.dart';
import 'package:amikipmobile/page/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

// class _CommunityState extends State<Community> {
class _CommunityState extends State<Community> with TickerProviderStateMixin {
// Like Button Controller
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 200), vsync: this, value: 1.0);

  bool _isFavorite = false;
// End Like Button Controller

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

// state Like Button
  @override
  void dispose() {
    // TODO: implement initState
    super.dispose();

    _controller.dispose();
  }
// End state Like Button

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4];
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            labelColor: Color(0xFF8F62F1),
            indicatorColor: Color(0xFF8F62F1),
            unselectedLabelColor: Color(0xFF8897A8),
            labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            tabs: [
              Tab(text: 'Terbaru'),
              Tab(text: 'Terbaik'),
              Tab(text: 'Post Saya'),
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
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  right: 11,
                  left: 11,
                ),
                child: Column(
                  children: [
                    for (var i in text)
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: double.infinity,
                          height: 219,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: Color.fromRGBO(231, 236, 243, 1),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 6,
                              right: 6,
                            ),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mencapai Hari Ke-90: Bagaimana Rasa Perjuangan Saya Berubah',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Goku',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(146, 142, 142, 1),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      SvgPicture.asset('assets/icons/dot.svg'),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '4 hari yang lalu',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color.fromRGBO(96, 89, 99, 1),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Container(
                                        width: 90,
                                        height: 23,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color:
                                              Color.fromRGBO(237, 77, 80, 0.1),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                            top: 5,
                                            bottom: 5,
                                            right: 8,
                                          ),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/icons/fire.svg'),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Text(
                                                'Top Thread',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      248, 99, 102, 1),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Sudah 90 hari sejak saya mulai perjuangan NoFap ' +
                                        'saya, dan saya merasa seperti saya telah melalui ' +
                                        'perubahan yang luar biasa ....',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromRGBO(96, 89, 99, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Row(
                                          children: [
                                            // Dynamic Like Button
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _isFavorite = !_isFavorite;
                                                });
                                                _controller.reverse().then(
                                                    (value) =>
                                                        _controller.forward());
                                              },
                                              child: ScaleTransition(
                                                scale: Tween(
                                                        begin: 0.7, end: 1.0)
                                                    .animate(CurvedAnimation(
                                                        parent: _controller,
                                                        curve: Curves.easeOut)),
                                                child: _isFavorite
                                                    ? const Icon(
                                                        Icons.favorite,
                                                        size: 21,
                                                        color: Color.fromRGBO(
                                                            248, 99, 102, 1),
                                                      )
                                                    : const Icon(
                                                        Icons.favorite_border,
                                                        size: 24,
                                                        color: Color.fromRGBO(
                                                            148, 148, 148, 1),
                                                      ),
                                              ),
                                            ),
                                            // End Dynamic Like Button
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              '108 Love',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    154, 153, 158, 1),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   width: 26,
                                            // ),
                                            Row(
                                              children: [
                                                IconButton(
                                                  icon: SvgPicture.asset(
                                                      'assets/icons/comment.svg'),
                                                  onPressed: () {},
                                                ),
                                                Text(
                                                  '8 Komentar',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        154, 153, 158, 1),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 110,
                                                ),
                                                IconButton(
                                                  icon: SvgPicture.asset(
                                                      'assets/icons/save.svg'),
                                                  onPressed: () {},
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Column(
              children: [Text("Hai")],
            ),
            Column(
              children: [Text("Hai 2")],
            ),
          ],
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
          currentIndex: 3,
          onTap: _onItemTapped,
          selectedItemColor: Color.fromRGBO(134, 83, 247, 1),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
