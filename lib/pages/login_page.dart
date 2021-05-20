import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          'assets/images/login.png',
          height: 100,
          width: 100,
        ),
        SizedBox(
          height: 20.0,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Welcome",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
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
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    print("hi nishu");
                  },
                  child: Text("login"))
            ],
          ),
        )
      ],
    ));
  }
}
