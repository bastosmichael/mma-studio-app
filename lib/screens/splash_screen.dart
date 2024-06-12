import 'package:flutter/material.dart';
import 'dart:async';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      context.push('/home'); // Correct navigation method for GoRouter
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Ensure background is always white
      body: Center(
        child: Image.asset('assets/mma-logo.jpeg'), // Ensure the image path is correct
      ),
    );
  }
}
