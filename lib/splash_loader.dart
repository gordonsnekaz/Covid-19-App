import 'package:co_reg/on_boarding.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool showLoginPage = true;

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  void toggleScreens() {
    showLoginPage = !showLoginPage;
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffE7F1FF),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              child: Image(image: AssetImage('android/assets/logo.png')),
            ),
            Container(
              child: Text(
                'CO-Reg',
                style: TextStyle(
                    color: Color(0xff013C8A),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )),
      ),
    );
  }
}
