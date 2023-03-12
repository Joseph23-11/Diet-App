import 'package:diet_app/shared/theme.dart';
import 'package:diet_app/ui/widgets/package_aktifitas.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class OnboardingPage4 extends StatelessWidget {
  const OnboardingPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        title: Text(
          'Cek Aktifitas Fisik',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 72,
          left: 24,
          right: 24,
        ),
        children: [
          Text(
            'Level aktifitas anda',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Wrap(
                  spacing: 37,
                  runSpacing: 17,
                  children: const [
                    PackageAktifitas(
                      title: 'Tidak aktif',
                      isSelected: true,
                    ),
                    PackageAktifitas(
                      title: 'Cukup Aktif, berolahraga 1-2 kali/minggu',
                      isSelected: false,
                    ),
                    PackageAktifitas(
                      title: 'Aktif, berolahraga 3-5 kali/minggu',
                      isSelected: false,
                    ),
                    PackageAktifitas(
                      title: 'Sangat Aktif, berolahraga 6-7 kali/minggu',
                      isSelected: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 94,
                ),
                Container(),
                CustomFilledButton(
                  title: "Berikutnya",
                  onPressed: () {
                    Navigator.pushNamed(context, '/onboarding-page-4');
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
