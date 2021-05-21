import 'package:flutter/material.dart';
import 'package:learn/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  changedButton
                      ? 'assets/images/Welcome.png'
                      : 'assets/images/hey.png',
                  fit: BoxFit.cover,
                  // height: 100,
                  // width: 100,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Welcome  $name",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'acme'),
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
                          textCapitalization: TextCapitalization.characters,
                          decoration: InputDecoration(
                            hintText: "Enter User Name",
                            labelText: "UserName",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "UserName Cannot Be Empty";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Password Cannot Be Empty";
                          } else if (value.length <= 8) {
                            return "Password length Should Be Eight Characters";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 40),
                      Material(
                        color: Colors.deepOrange,
                        borderRadius:
                            BorderRadius.circular(changedButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changedButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changedButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
