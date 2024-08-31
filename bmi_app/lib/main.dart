import 'package:bmi_app/home.dart';
import 'package:bmi_app/result.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
      scaffoldBackgroundColor: Color(0xff1d1c1b),
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xff1d1c1b)
      ),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

