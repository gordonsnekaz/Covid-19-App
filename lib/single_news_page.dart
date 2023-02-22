import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleNewsPage extends StatelessWidget {
  final String username = "Joe Ribs";
  final String heading;
  final String dates;
  final String summary;

  SingleNewsPage(
      {required this.dates, required this.summary, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Color(0xffE7F1FF),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 15.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Color(0xff828282),
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'News and updates',
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff828282)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            heading,
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4f4f4f)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffA0A0A0),
                                    blurRadius: 2,
                                    offset: Offset(1, 2), // Shadow position
                                  ),
                                ],
                                color: Color(0xff013C8A),
                                image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage(
                                        'android/assets/vaccine.jpg')),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            dates,
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff828282)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'by Tom Jack',
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff828282)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            summary,
                            style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4f4f4f)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
