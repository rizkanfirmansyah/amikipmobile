import 'package:amikipmobile/page/home.dart';
import 'package:amikipmobile/page/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            right: 30.0,
            top: 100.0,
          ),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/chara_pack_welcome.png'),
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
                          height: 16,
                        ),
                        Text(
                          'Awal yang bagus, kawan!.\n' +
                              'Aku tahu perjuanganmu tidak \n' +
                              'mudah, tetapi kamu sudah berani \n' +
                              'untuk berubah. Pertahankan itu.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(96, 89, 99, 1),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Percayalah, ini akan berdampak \n' +
                              'besar bagi masa depanmu!',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(96, 89, 99, 1),
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
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const Home()));
                      },
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
