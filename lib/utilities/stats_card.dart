import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsCard extends StatelessWidget {
  //variables
  var color_value;
  String number_of_people;
  String heading;

  StatisticsCard(
      {required this.color_value,
      required this.heading,
      required this.number_of_people});

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
          ], color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    heading,
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff013C8A)),
                  ),
                  Text(
                    " | Total",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff828282)),
                  ),
                ],
              ),

              //spacer
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.people,
                    size: 35,
                    color: Color(color_value),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        number_of_people,
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff013C8A)),
                      ),
                      Text(
                        '128' + ' People',
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(color_value)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Padding(
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
          //text and button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //spacer
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "New Cases ",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff013C8A)),
                    ),
                    Text(
                      "| Total",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff828282)),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    Icon(
                      Icons.people,
                      size: 35,
                      color: Color(color_value),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          '128',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff013C8A)),
                        ),
                        Text(
                          '128' + ' People',
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(color_value)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
*/
