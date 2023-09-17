import 'package:flutter/material.dart';
import 'package:screensapp/screens/home/home_view.dart';
import 'package:screensapp/screens/login/login_view.dart';
import 'package:screensapp/screens/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
