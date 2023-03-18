import 'package:etlab1/desktop.dart';
import 'package:etlab1/mobile.dart';
import 'package:flutter/material.dart';
import 'responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(
        mobileBody: MyMobile(), 
        desktopBody: MyDesktop()),
        
    );
  }
}