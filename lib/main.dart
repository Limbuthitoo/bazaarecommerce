import 'package:bazaar/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bazaar App',
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: const SplashView(),
    );
  }
}
