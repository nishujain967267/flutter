import 'package:flutter/material.dart';
import 'package:learn/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png', fit: BoxFit.cover,
                // height: 100,
                // width: 100,
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter User Name", labelText: "UserName"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(height: 40),
                    // ElevatedButton(

                    //     style: TextButton.styleFrom(minimumSize: Size(150, 40),),
                    //     onPressed: () {
                    //       print("hi nishu");
                    //     },
                    //     child: Text("login"))

                    RawMaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                        // routes.dart se use kiya hai homeroute ko jo ki phle app.js me hai
                      },
                      elevation: 2.0,
                      fillColor: Colors.deepPurple,
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
