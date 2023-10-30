import 'package:ecommerce/login.dart';
import 'package:ecommerce/screens/bottom_navigation_bar.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages =[];
  @override
  void initState(){
    super.initState();
    _pages=[
      ScreenHiddenDrawer(
          ItemHiddenMenu(
        name: "Home ",
        baseStyle: TextStyle(fontSize: 20
        ),
        selectedStyle: TextStyle(fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        ),

        BottomNavigationBar1(),
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Settings",
            baseStyle: TextStyle(fontSize: 20),
            selectedStyle: TextStyle(fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),

          HomeScreen()
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Log In",
            baseStyle: TextStyle(fontSize: 20),
            selectedStyle: TextStyle(fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),

        loginPage()
      ),
    ScreenHiddenDrawer(
        ItemHiddenMenu(
           name: "SignOut",
            baseStyle: TextStyle(fontSize: 20),
           selectedStyle: TextStyle(fontSize: 26,
               fontWeight: FontWeight.bold,
               color: Colors.white),
         ),

      loginPage()
    ),

    ];
  }
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        backgroundColorMenu: Colors.deepPurple.shade200,
        initPositionSelected: 0 ,
      slidePercent: 35,
      elevationAppBar: 5,
      typeOpen: TypeOpen.FROM_LEFT,
      disableAppBarDefault: false,
      withAutoTittleName: false,
      contentCornerRadius: 30,
      isTitleCentered: false,
      tittleAppBar:   Text("Shop N Shop")
    );

  }
}
