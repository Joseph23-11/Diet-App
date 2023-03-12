import 'package:diet_app/ui/pages/home_page.dart';
import 'package:diet_app/ui/pages/onboarding_page.dart';
import 'package:diet_app/ui/pages/onboarding_page_2.dart';
import 'package:diet_app/ui/pages/onboarding_page_3.dart';
import 'package:diet_app/ui/pages/onboarding_page_4.dart';
import 'package:diet_app/ui/pages/sign_in_page.dart';
import 'package:diet_app/ui/pages/sign_up_page.dart';
import 'package:diet_app/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application./linter/lints/prefer_const_constructors.html
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/onboarding-page-2': (context) => const OnboardingPage3(),
        '/onboarding-page-3': (context) => const OnboardingPage4(),
        '/onboarding-page-4': (context) => const OnboardingPage5(),
        '/home-page': (context) => const HomePage(),
      },
    );
  }
}
