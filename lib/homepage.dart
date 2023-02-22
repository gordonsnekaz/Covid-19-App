import 'package:co_reg/utilities/stats_card.dart';
import 'package:co_reg/utilities/top_navigation_bar.dart';
import 'package:co_reg/utilities/welcome_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  final String username;

  LandingPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        //app bar with profile
        Container(
          child: TopNavigationBar(
            covid_news: 'CO-Reg',
          ),
        ),

        Expanded(
          child: ListView(
            children: [
              //spacer
              SizedBox(
                height: 20,
              ),

              //Welcome card
              Container(
                child: WelcomeCard(
                  username: username,
                ),
              ),
              //spacer
              SizedBox(
                height: 30,
              ),

              //Statistic heading
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Covid-19 statistics',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4F4F4F)),
                    ),
                  ],
                ),
              ),

              //spacer
              SizedBox(
                height: 10,
              ),

              Container(
                child: Row(
                  children: [
                    StatisticsCard(
                      heading: 'New Cases',
                      number_of_people: '128',
                      color_value: int.parse('ff2F80ED', radix: 16),
                    ),
                    StatisticsCard(
                      heading: 'Recoveries',
                      number_of_people: '70',
                      color_value: int.parse('ff219653', radix: 16),
                    ),
                  ],
                ),
              ),

              //spacer
              SizedBox(
                height: 20,
              ),

              Container(
                child: Row(
                  children: [
                    StatisticsCard(
                      heading: 'Deaths       ',
                      number_of_people: '128',
                      color_value: int.parse('ffEB5757', radix: 16),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
