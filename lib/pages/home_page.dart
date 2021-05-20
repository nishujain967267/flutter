import 'package:flutter/material.dart';

//material me hota hai child aur scaffold me hota hai body aur app bar
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = 'pranjal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("i am a flutter developer"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
