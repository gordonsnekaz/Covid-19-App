import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeCard extends StatelessWidget {
  final String username;

  WelcomeCard({required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xffA0A0A0),
                blurRadius: 2,
                offset: Offset(1, 2), // Shadow position
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff013C8A),
                Color(0xff007D58),
              ],
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Row(children: [
          //text and button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi,",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF)),
                ),
                //spacer
                const SizedBox(
                  height: 4,
                ),
                Text(
                  username,
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF)),
                ),

                //spacer
                const SizedBox(
                  height: 10,
                ),

                Text(
                  "Welcome to CO-Reg system. We feeling you are doing well. Please remember to:",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF)),
                ),

                const SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    Image.asset(
                      'android/assets/medical-mask.png',
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '# Mask up',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'android/assets/keep-distance.png',
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '# Social distance',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset(
                      'android/assets/wash-your-hands.png',
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '# Wash your hands',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
