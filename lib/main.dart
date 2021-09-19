import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AM Vision App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: AnimatedSplash(
        imagePath: 'assets/images/icon.png',
        home: HomeScreen(),
        duration: 2500,
        type: AnimatedSplashType.StaticDuration,
      ),
    );
  }
}

