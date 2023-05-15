import 'package:catalog_project/pages/home.dart';
import 'package:catalog_project/pages/login.dart';
import 'package:catalog_project/utils/routes.dart';
import 'package:catalog_project/utils/widgets/themes.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //calls Home PAge
      // home: home(),

      // Define theme to be dark or light
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,

      // Other theme options
      theme: Mytheme.lighttheme(context),
      darkTheme: Mytheme.darktheme(context),

      

      // Defininng the routes of our application
      initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context) => login(),
        MyRoutes.loginroute: (context) => login(),
        MyRoutes.homeroute: (context) => home(),
      },
    );
  }
}
