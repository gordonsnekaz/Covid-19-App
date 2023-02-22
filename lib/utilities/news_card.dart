import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsCard extends StatelessWidget {
  final String heading;
  final pic;
  final String summary;

  NewsCard({required this.heading, required this.pic, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xffA0A0A0),
            blurRadius: 2,
            offset: Offset(1, 2), // Shadow position
          ),
        ], color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(12)),
        child: Row(children: [
          //picture
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    fit: BoxFit.fitHeight, image: AssetImage(pic))),
          ),

          //spacer
          const SizedBox(
            width: 20,
          ),

          //text and button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4F4F4F)),
                ),
                //spacer
                const SizedBox(
                  height: 8,
                ),
                Text(
                  summary,
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff828282)),
                ),

                //spacer
                const SizedBox(
                  height: 10,
                ),
                //Learn more button
                // ignore: avoid_unnecessary_containers
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xff013C8A),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Learn more',
                    style: GoogleFonts.roboto(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
