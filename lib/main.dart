import 'package:flutter/material.dart';
import 'package:food_grid/const.dart';
import 'package:food_grid/screen/onboarding/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Grid',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        canvasColor: Colors.black,
      ),
      home: SplashScreen(),
    );
  }
}