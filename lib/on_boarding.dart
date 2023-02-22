import 'package:co_reg/intro_page_1.dart';
import 'package:co_reg/intro_page_2.dart';
import 'package:co_reg/intro_page_3.dart';
import 'package:co_reg/login_page.dart';
import 'package:co_reg/main_page.dart';
import 'package:co_reg/splash_loader.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //track for page
  PageController _controller = PageController();

  //on last page
  bool OnLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              OnLastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),

        //dot indicators
        Container(
          padding: EdgeInsets.only(bottom: 60.0),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //dot indicators
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        radius: 6.0,
                        dotWidth: 24.0,
                        dotHeight: 12.0,
                        dotColor: Color(0xff828282),
                        activeDotColor: Color(0xff013C8A)),
                  ),

                  //spacer
                  SizedBox(
                    height: 30.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //skip
                      GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            decoration: BoxDecoration(
                                color: Color(0xffE7F1FF),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Center(
                                    child: Text(
                                  'Skip',
                                  style: GoogleFonts.roboto(
                                      color: Color(0xff013C8A),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )),
                              ],
                            ),
                          )),

                      //next or done
                      OnLastPage
                          ? GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MainPage();
                                }));
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                decoration: BoxDecoration(
                                    color: Color(0xff013C8A),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Center(
                                        child: Text(
                                      'Done',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  ],
                                ),
                              ))
                          : GestureDetector(
                              onTap: () {
                                _controller.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
                                decoration: BoxDecoration(
                                    color: Color(0xff013C8A),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Center(
                                        child: Text(
                                      'Next',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )),
                                    //spacer
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xffFFFFFF),
                                      size: 20,
                                    )
                                  ],
                                ),
                              )),
                    ],
                  )
                ],
              )),
        )
      ]),
    );
  }
}
