import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallNewsCard extends StatelessWidget {
  final small_icon;
  final String small_title;

  SmallNewsCard({required this.small_icon, required this.small_title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0xffA0A0A0),
              blurRadius: 2,
              offset: Offset(1, 2), // Shadow position
            ),
          ], color: Color(0xff013C8A), borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Image.asset(
                small_icon,
                height: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                small_title,
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
