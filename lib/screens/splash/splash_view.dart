import 'dart:async';

import 'package:flutter/material.dart';
import 'package:screensapp/screens/login/login_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    print("Timer Start Hogaya");
    // Perform one-time initialization tasks here
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginView(),
        ),
      );
    });
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF8A400), // Set your desired background color here
        child: Center(
          child: SvgPicture.asset(
            'assets/splash1.svg', // Replace with the path to your SVG file
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up resources when the widget is removed from the tree
    super.dispose();
  }
}
