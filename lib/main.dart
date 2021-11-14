import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectx/pages/home_page.dart';
import 'package:projectx/pages/login_page.dart';
import 'package:projectx/utils/routes.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.indieFlower().fontFamily

      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          // primarySwatch: Colors.red
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=> HomePage(),
        MyRoutes.loginRoute:(context)=>LoginPage()
      },
    );
  }
}
