import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE7F1FF),
      child: Center(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Image.asset(
              'android/assets/logo.png',
              height: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Covid-19 statistics',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff013C8A),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Converting your Covid-19 vaccination card into a digital Electronic card so that you can easy walk around with it and avoid losing it.',
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff828282),
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      )),
    );
  }
}
