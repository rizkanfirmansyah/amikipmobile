import 'package:amikipmobile/page/community.dart';
import 'package:amikipmobile/page/login.dart';
import 'package:amikipmobile/page/mission.dart';
import 'package:amikipmobile/page/motivation.dart';
import 'package:amikipmobile/page/other.dart';
import 'package:amikipmobile/page/profile.dart';
import 'package:amikipmobile/page/splash.dart';
import 'package:amikipmobile/page/splash_2.dart';
import 'package:amikipmobile/page/welcome.dart';
import 'package:flutter/material.dart';
import 'page/animate.dart';
import 'page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
