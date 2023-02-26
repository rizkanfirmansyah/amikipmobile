import 'package:amikipmobile/page/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background/bg_login.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  'Halo kawan!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Silakan masuk terlebih dahulu untuk melanjutkan.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(146, 142, 142, 1),
                  ),
                ),
                SizedBox(
                  height: 88,
                ),
                Container(
                  width: 400,
                  height: 52,
                  child: OutlinedButton.icon(
                    icon: SvgPicture.asset('assets/icons/google.svg'),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    label: Text(
                      'Login dengan Akun Google',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(96, 89, 99, 1),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            titlePadding: EdgeInsets.only(top: 32),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/logo_login.png'),
                              ],
                            ),
                            content: Container(
                              width: 345,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Choose an account',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'to continue to NoFap Adventure',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(96, 89, 99, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 44,
                                  ),
                                  InkWell(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/profile_1.png'),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Teguh Iqbal',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              'teguh.iqbal782@gmail.com',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    96, 89, 99, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Welcome()));
                                    },
                                  ),
                                  SizedBox(
                                    height: 18,
                                    child: new Center(
                                      child: new Container(
                                        margin: new EdgeInsetsDirectional.only(
                                            start: 1.0, end: 1.0),
                                        height: 1.0,
                                        color: Color.fromRGBO(217, 207, 226, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  InkWell(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/profile_2.png'),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Riezkan Aprianda',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              'riezkanaprianda@gmail.com',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    96, 89, 99, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Welcome()));
                                    },
                                  ),
                                  SizedBox(
                                    height: 18,
                                    child: new Center(
                                      child: new Container(
                                        margin: new EdgeInsetsDirectional.only(
                                            start: 1.0, end: 1.0),
                                        height: 1.0,
                                        color: Color.fromRGBO(217, 207, 226, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  InkWell(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/profile_3.png'),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Maulana Yusuf',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              'maulanayusuf200101@gmail.com',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    96, 89, 99, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Welcome()));
                                    },
                                  ),
                                  SizedBox(
                                    height: 18,
                                    child: new Center(
                                      child: new Container(
                                        margin: new EdgeInsetsDirectional.only(
                                            start: 1.0, end: 1.0),
                                        height: 1.0,
                                        color: Color.fromRGBO(217, 207, 226, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  InkWell(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/profile_4.png'),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Riza Rasyid',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              'riru.collage@gmail.com',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    96, 89, 99, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Welcome()));
                                    },
                                  ),
                                  SizedBox(
                                    height: 18,
                                    child: new Center(
                                      child: new Container(
                                        margin: new EdgeInsetsDirectional.only(
                                            start: 1.0, end: 1.0),
                                        height: 1.0,
                                        color: Color.fromRGBO(217, 207, 226, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/user_profile.png'),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Add another acount',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
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
