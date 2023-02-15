import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Animate extends StatefulWidget {
  const Animate({super.key});

  @override
  State<Animate> createState() => _AnimateState();
}

class _AnimateState extends State<Animate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8653F7),
      appBar: AppBar(
        title: SvgPicture.asset('assets/icons/arrowL.svg'),
        flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    transform: Matrix4.translationValues(0, 0, 0),
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFFA583EF),
                        borderRadius: BorderRadius.circular(12)),
                    height: 15,
                  ),
                  Container(
                    transform: Matrix4.translationValues(-10, 0, 10),
                    decoration: BoxDecoration(
                        color: Color(0xFF8F62F1),
                        borderRadius: BorderRadius.circular(12)),
                    width: 140,
                    height: 15,
                  ),
                ],
              ),
            )),
        actions: [
          GestureDetector(
            onTap: () {
              debugPrint('Bell img tapped');
            },
            child: SvgPicture.asset('assets/icons/tricircle.svg'),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF8F62F1),
                  borderRadius: BorderRadius.circular(160)),
              width: 320,
              height: 320,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFA583EF),
                          borderRadius: BorderRadius.circular(100)),
                      width: 180,
                      height: 180,
                      child: Center(
                        child: Text(
                          "Ambil Nafas",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              child: Center(
                child: GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                        width: 125,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFA583EF),
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Tempo",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFFBFBFBF))),
                              const SizedBox(width: 10),
                              SvgPicture.asset('assets/icons/arrowR.svg')
                            ],
                          ),
                        ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
