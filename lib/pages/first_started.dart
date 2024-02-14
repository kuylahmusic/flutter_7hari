import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class FirstStarted extends StatelessWidget {
  const FirstStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/started_page.png')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 550,
              left: 90,
              right: 90,
            ),
            child: Text(
              'Maximize Revenue',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 600, left: 40, right: 40),
            child: Text(
              'Gain more profit from cryptocurrency \n without any risk involved',
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 655, left: 148, right: 148),
            child: Image.asset(
              'assets/purple_button.png',
              width: 80,
            ),
          ),
        ],
      ),
    );
  }
}
