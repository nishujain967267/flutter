import 'package:flutter/material.dart';
import 'package:learn/pages/home_page.dart';
import 'package:learn/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/": (context) =>
            HomePage(), //jo / pe chalta hai wahi dikhta hai by default mainly starting me.
        "/login": (context) => LoginPage()
      },
    );
  }
}
