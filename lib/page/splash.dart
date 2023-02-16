import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 46.0,
            right: 46.0,
            top: 63.0,
          ),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 22,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(134, 83, 247, 1),
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      child: Container(
                        height: 2.0,
                        width: 190.0,
                        color: Color.fromRGBO(207, 216, 231, 1),
                      ),
                    ),
                    Container(
                      width: 22,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(207, 216, 231, 1),
                        ),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/archer_2.png'),
                        SizedBox(
                          height: 33,
                        ),
                        Text(
                          'Selamat Datang \n' + 'di NoFap Adventure!',
                          style: TextStyle(
                            color: Color.fromRGBO(18, 18, 18, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Awal yang bagus, kawan!.\n' +
                              'Aku tahu perjuanganmu tidak \n' +
                              'mudah, tetapi kamu sudah berani \n' +
                              'untuk berubah. Pertahankan itu !',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(146, 142, 142, 1),
                          ),
                        ),
                        SizedBox(
                          height: 151,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 313,
                  height: 52,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.arrow_back),
                      label: Text(
                        'Pilih Karakter',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(134, 83, 247, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
