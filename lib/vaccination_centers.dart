import 'package:co_reg/single_news_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:maps_launcher/maps_launcher.dart';

class VaccinationCentersPage extends StatelessWidget {
  final headings = <String>[
    'Parirenyatwa Hospital',
    'Cherima Private Clinic',
    'Cut Hospital',
    'HighField Clinic',
    'Mhuri Imwe Hospital',
    'Parirenyatwa Hospital',
    'Cherima Private Clinic',
    'Cut Hospital',
    'HighField Clinic',
    'Mhuri Imwe Hospital',
    'Parirenyatwa Hospital',
    'Cherima Private Clinic',
    'Cut Hospital',
    'HighField Clinic',
    'Mhuri Imwe Hospital',
  ];

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
                              'News',
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
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  itemCount: headings.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0.4))),
                      margin: EdgeInsets.symmetric(vertical: 3.0),
                      child: GestureDetector(
                        onTap: () {
                          MapsLauncher.launchCoordinates(
                              37.4220041, -122.0862462);
                        },
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[100],
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                'android/assets/variants.jpg'))),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        headings[index],
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff828282)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_city,
                                            size: 20,
                                            color: Color(0xff013C8A),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Harare',
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff013C8A)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                              ),
                              Icon(
                                Icons.directions,
                                color: Color(0xff013C8A),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
