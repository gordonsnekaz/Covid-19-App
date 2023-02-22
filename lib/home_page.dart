import 'package:co_reg/blank.dart';
import 'package:co_reg/crtificate_page.dart';
import 'package:co_reg/homepage.dart';
import 'package:co_reg/news_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  final String username;

  HomePage({required this.username});

  @override
  State<HomePage> createState() => _HomePageState(username);
}

class _HomePageState extends State<HomePage> {
  String uname = '';

  _HomePageState(String username) {
    uname = username;
  }

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);

  //Bottom navigation screens
  List<Widget> _buildScreens() {
    return [
      NewsPage(),
      LandingPage(
        username: uname,
      ),
      CertificatePage(
        username: uname,
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.newspaper),
        title: ("News"),
        activeColorPrimary: Color(0xff013C8A),
        inactiveColorPrimary: Color(0xff828282),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: ("Home"),
        activeColorPrimary: Color(0xff013C8A),
        inactiveColorPrimary: Color(0xff828282),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add_card),
        title: ("Vaccination card"),
        activeColorPrimary: Color(0xff013C8A),
        inactiveColorPrimary: Color(0xff828282),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Color(0xffE7F1FF), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(2.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
