import 'package:diet_app/shared/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/form.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        title: Text(
          'Masukkan Data',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 72,
        ),
        children: [
          Text(
            'Masukkan nama anda',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            padding: EdgeInsets.all(44),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: lightBackgroundColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE: FULL NAME INPUT
                CustomFormField(
                  title: '',
                ),
                const SizedBox(
                  height: 310,
                ),
                CustomFilledButton(
                  title: "Berikutnya",
                  onPressed: () {
                    Navigator.pushNamed(context, '/onboarding-page-3');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
