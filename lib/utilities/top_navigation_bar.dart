import 'package:co_reg/blank.dart';
import 'package:co_reg/my_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TopNavigationBar extends StatelessWidget {
  final String covid_news;

  TopNavigationBar({required this.covid_news});

  /*_openPage(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => MyProfilePage()));*/

  @override
  Widget build(BuildContext context) {
    Future openDialog() => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Your profile'),
            content: Text('Dialog'),
            actions: [TextButton(onPressed: () {}, child: Text('EXIT'))],
          ),
        );

    return Container(
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
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // Greetings
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //spacer
                const SizedBox(
                  height: 20,
                ),

                Text(
                  covid_news,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                //spacer
                const SizedBox(
                  height: 20,
                ),
              ],
            ),

            //Profile Pic
            GestureDetector(
              onTap: () {
                pushNewScreen(
                  context,
                  screen: MyProfilePage(),
                  withNavBar: true, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color(0xff013C8A),
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
