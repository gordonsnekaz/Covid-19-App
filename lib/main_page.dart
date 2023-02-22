import 'package:co_reg/auth_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  final bool trk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        builder: ((context, snapshot) {
          if (trk) {
            return HomePage(
              username: 'Joe Ribs',
            );
          } else {
            return AuthPage();
          }
        }),
      ),
    );
  }
}
