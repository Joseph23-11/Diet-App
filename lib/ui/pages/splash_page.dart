import 'dart:async';

import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: lightBackgroundColor,
        body: Center(
          child: Container(
            width: 242,
            height: 50,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/img_logo_light.png',
              ),
            )),
          ),
        ),
      ),
    );
  }
}
