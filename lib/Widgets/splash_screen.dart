import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eshtry/Widgets/homescreen.dart';
import 'package:eshtry/main.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1000,
      splash: Column(
        children: [
          Image.asset(
              'assets/CDD5A9CD-A97C-47CF-B556-01F465535556_1_201_a.jpeg'),
          Text(
            'eShtry',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green[700]),
          )
        ],
      ),
      nextScreen: HomeScreen(),
      backgroundColor: Colors.white,
      splashIconSize: 300,
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
