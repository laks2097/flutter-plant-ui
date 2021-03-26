import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/homescreen.dart';
import 'Screens/drawerscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: MyHomeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
