import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double pi = 3.14;
    // bool isMale = true;
    // num temp = 30.5;

    // var day = "Tuesday";
    // const pI = 3.14;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute: (context)=>HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}
