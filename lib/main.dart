
import 'package:dream_houses/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:ui_ux_design101/Page_1.dart';
// import 'package:ui_ux_design101/Page_3.dart';
// import 'package:ui_ux_design101/homepage.dart';
// import 'package:ui_ux_design101/page_2.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: homepage(),
    );
  }
}
