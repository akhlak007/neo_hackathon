
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:neo_hackathon/screens/login_screen.dart';
//import 'package:university_companion/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const UniversityCompanionApp());
}

class UniversityCompanionApp extends StatelessWidget {
  const UniversityCompanionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'University Companion',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2563EB),
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2563EB),
          brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      ),
      home: const LoginScreen(),
    );
  }
}
