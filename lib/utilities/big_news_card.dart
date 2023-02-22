import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigNewsCard extends StatelessWidget {
  final String hospital_name;
  final String hospital_location;
  final pic;

  BigNewsCard(
      {required this.hospital_location,
      required this.hospital_name,
      required this.pic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff013C8A),
                  blurRadius: 3,
                  offset: Offset(2, 3), // Shadow position
                ),
              ],
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.fitHeight, image: AssetImage(pic)),
              borderRadius: BorderRadius.circular(12)),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff013C8A).withOpacity(0.6)),
            child: Column(children: [
              //picture
              SizedBox(
                height: 100,
              ),

              //Name
              Text(
                hospital_name,
                style: GoogleFonts.roboto(
                    color: Color(0xffFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),

              //Location
              Text(
                hospital_location,
                style: GoogleFonts.roboto(
                    color: Color(0xffFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),

              //spacer
              SizedBox(
                height: 15,
              ),

              // Button
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xff013C8A),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                    child: Text(
                  'Directions',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
