import 'package:diet_app/ui/widgets/package_gender.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/button.dart';
import '../widgets/form.dart';

class OnboardingPage3 extends StatelessWidget {
  final bool isSelected;
  const OnboardingPage3({
    Key? key,
    this.isSelected = false,
  }) : super(key: key);

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
          'Cek Kebutuhan Kalori',
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
            'Masukkan data anda',
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
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE: JENIS KELAMIN
                Text(
                  'Jenis Kelamin',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Wrap(
                  spacing: 24,
                  runSpacing: 17,
                  children: const [
                    PackageGender(
                      title: 'Pria',
                      isSelected: true,
                    ),
                    PackageGender(
                      title: 'Wanita',
                      isSelected: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // NOTE: BERAT BADAN
                CustomFormField(
                  title: 'Berat Badan (kg)',
                ),
                const SizedBox(
                  height: 16,
                ),
                // NOTE: TINGGI BADAN
                CustomFormField(
                  title: 'Tinggi Badan (cm)',
                ),
                const SizedBox(
                  height: 16,
                ),
                // NOTE: USIA
                CustomFormField(
                  title: 'Usia (tahun)',
                ),

                const SizedBox(
                  height: 30,
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
