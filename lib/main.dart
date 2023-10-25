import 'package:ecommerce/screens/hidden_drawer.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      //home: loginPage(),
      //home:  HomeScreen(),
      home: HiddenDrawer(),

    );
  }
}
