import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
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
      home: AnimatedSplashScreen(
        nextScreen: HomeScreen(),
        splash: "assets/images/icon.png",
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 400,
        pageTransitionType: PageTransitionType.bottomToTop,
      ),
    );
  }
}

