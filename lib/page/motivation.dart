import 'package:amikipmobile/page/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Motivation extends StatefulWidget {
  const Motivation({super.key});

  @override
  State<Motivation> createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Other()));
          },
        ),
        title: Text(
          'Motivasi',
          style: TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(18, 18, 18, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 44,
            right: 48,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 121,
              ),
              Row(
                children: [
                  Image.asset('assets/images/archer_2.png'),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'Mau sampai kapan?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.mic_none,
                    color: Color.fromRGBO(96, 89, 99, 1),
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    'Naruto Uciha',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(96, 89, 99, 1),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 245,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                width: 400,
                height: 12,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.15,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromRGBO(134, 83, 247, 1),
                    ),
                    backgroundColor: Color.fromRGBO(239, 233, 233, 1),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2.37',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(146, 142, 142, 1),
                    ),
                  ),
                  Text(
                    '5.45',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(146, 142, 142, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 30,
                      icon: Icon(
                        Icons.skip_previous,
                        color: Color.fromRGBO(96, 89, 99, 1),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      onPressed: () {},
                      padding: const EdgeInsets.all(0.0),
                      icon: Icon(
                        Icons.pause,
                        size: 30.0,
                        color: Color.fromRGBO(96, 89, 99, 1),
                      ),
                    ),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(
                        Icons.skip_next,
                        color: Color.fromRGBO(96, 89, 99, 1),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
