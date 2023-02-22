import 'package:qr_flutter/qr_flutter.dart';
import 'package:co_reg/utilities/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CertificatePage extends StatelessWidget {
  final String username;

  CertificatePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xffFFFFFF),
        child: Column(children: [
          //app bar with profile
          Container(
            child: TopNavigationBar(
              covid_news: 'E-Covid-19 Vaccination Card',
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),

                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'E-Covid-19 Vaccination Card',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFC4850)),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'android/assets/zcm.png',
                      height: 100,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Image.asset(
                      'android/assets/mhcz.png',
                      height: 80,
                    ),
                  ],
                ),

                //Listview
                Container(
                  alignment: Alignment.center,
                  child: QrImage(
                    data: username + " 63-1479447C63 564EW123 Baines Intercare",
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "FOR MORE INFORMATION ON THE COVID_19 VACCINE OR WHAT TO DO AFTER VACCINATION CALL 2019/393",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff828282)),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
