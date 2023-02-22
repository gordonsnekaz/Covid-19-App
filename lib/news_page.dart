import 'package:co_reg/all_news_updates.dart';
import 'package:co_reg/blank.dart';
import 'package:co_reg/single_news_page.dart';
import 'package:co_reg/utilities/news_card.dart';
import 'package:co_reg/utilities/top_navigation_bar.dart';
import 'package:co_reg/vaccination_centers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'utilities/big_news_card.dart';
import 'utilities/small_news_card.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        //app bar with profile
        Container(
          child: TopNavigationBar(
            covid_news: "Covid-19 News",
          ),
        ),

        //Listview
        Expanded(
          child: ListView(
            children: [
              //spacer
              const SizedBox(
                height: 10,
              ),

              //News Heading
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'News',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4F4F4F)),
                    ),
                    GestureDetector(
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: AllNewsUpdates(),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Text(
                        'See all',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500]),
                      ),
                    )
                  ],
                ),
              ),

              //spacer
              const SizedBox(
                height: 10,
              ),

              Container(
                child: Column(children: [
                  GestureDetector(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: SingleNewsPage(
                          heading: '',
                          summary: '',
                          dates: '',
                        ),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: NewsCard(
                      pic: 'android/assets/vaccine.jpg',
                      summary:
                          'Covid-19 is a disease caused by a novel corona virus...',
                      heading: 'Why Covid-19 Vaccine?',
                    ),
                  ),
                  //spacer
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: SingleNewsPage(
                          heading: '',
                          summary: '',
                          dates: '',
                        ),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: NewsCard(
                      pic: 'android/assets/variants.jpg',
                      summary:
                          'Covid-19 is a disease caused by a novel corona virus...',
                      heading: 'Covid-19 Variants',
                    ),
                  ),
                ]),
              ),

              //spacer
              const SizedBox(
                height: 20,
              ),
              //News Heading
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reccommended News',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4F4F4F)),
                    ),
                  ],
                ),
              ),

              //spacer
              const SizedBox(
                height: 10,
              ),

              //News
              Container(
                height: 55,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SmallNewsCard(
                      small_icon: 'android/assets/medical-mask.png',
                      small_title: 'Wear masks',
                    ),
                    SmallNewsCard(
                      small_icon: 'android/assets/keep-distance.png',
                      small_title: 'Social Distance',
                    ),
                    SmallNewsCard(
                      small_icon: 'android/assets/wash-your-hands.png',
                      small_title: 'Wash hands',
                    ),
                  ],
                ),
              ),

              //spacer
              const SizedBox(
                height: 20,
              ),

              //Vaccination center Heading
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vaccination Centers',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4F4F4F)),
                    ),
                    GestureDetector(
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: VaccinationCentersPage(),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Text(
                        'See all',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500]),
                      ),
                    )
                  ],
                ),
              ),

              //spacer
              const SizedBox(
                height: 8,
              ),

              //Card
              Container(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BigNewsCard(
                      hospital_name: 'Chinhoyi Hospital',
                      hospital_location: 'Chemagamba, Chinhoyi',
                      pic: 'android/assets/Chinhoyi-Hospital.jpg',
                    ),
                    BigNewsCard(
                      hospital_name: 'Parirenyatwa Hospital',
                      hospital_location: 'Avondale, Harare',
                      pic: 'android/assets/parirenyatwa-hospital.jpg',
                    ),
                    BigNewsCard(
                      hospital_name: 'Chinhoyi Hospital',
                      hospital_location: 'Chemagamba, Chinhoyi',
                      pic: 'android/assets/Chinhoyi-Hospital.jpg',
                    ),
                    BigNewsCard(
                      hospital_name: 'Chinhoyi Hospital',
                      hospital_location: 'Chemagamba, Chinhoyi',
                      pic: 'android/assets/Chinhoyi-Hospital.jpg',
                    ),
                  ],
                ),
              ),

              //spacer
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
