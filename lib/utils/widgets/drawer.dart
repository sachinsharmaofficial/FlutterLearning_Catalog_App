import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myimg =
        "https://media.licdn.com/dms/image/C4D03AQGA20KVKU3U_g/profile-displayphoto-shrink_800_800/0/1653283737146?e=1689811200&v=beta&t=zBzZzkzbYq_WaQknaEXWIDa0wmipdvJxPN41JP70as0";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Sachin Sharma"),
                  accountEmail: Text("ss2410@dseu.ac.in"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(myimg),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Contact Us",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.exclamationmark_triangle,
                color: Colors.white,
              ),
              title: Text(
                "Report A Bug",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
