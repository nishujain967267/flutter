import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = 'assets/images/nishu.jpg';
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                accountEmail: Text(
                  "PranjalNishu08@gmail.com",
                ),
                accountName: Text(
                  "Pranjal Jain",
                ),
                currentAccountPicture: CircleAvatar(
                  // radius: 30.0,

                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                'Email',
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ), //koi bhi data jo array me ya list me hai usko list view ki help se use kr skte hai.
    );
  }
}
