import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn/pages/home_page.dart';
import 'package:learn/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily
          // primaryTextTheme: GoogleFonts.latoTextTheme(),
          ),
      darkTheme: ThemeData(brightness: Brightness.dark),

      //routing
      initialRoute: '/',
      routes: {
        "/": (context) =>
            LoginPage(), //jo / pe chalta hai wahi dikhta hai by default mainly starting me.
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    );
  }
}
