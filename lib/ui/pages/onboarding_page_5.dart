import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/button.dart';
import '../widgets/form.dart';

class OnboardingPage5 extends StatefulWidget {
  const OnboardingPage5({
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardingPage5> createState() => _OnboardingPage5State();
}

class _OnboardingPage5State extends State<OnboardingPage5> {
  double _currentValue = 0.5;
  String _currentLabel = '';
  void _updateSliderLabel() {
    if (_currentValue < 0.33) {
      _currentLabel = 'Lambat';
    } else if (_currentValue >= 0.33 && _currentValue <= 0.66) {
      _currentLabel = 'Normal';
    } else {
      _currentLabel = 'Cepat';
    }
  }

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
          'Set Target Berat Badan',
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
            'Target berat badan (kg)',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.all(24),
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 22,
              left: 22,
              right: 22,
              bottom: 22,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Seberapa cepat anda akan melakukannya?',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Slider(
                      value: _currentValue,
                      min: 0.0,
                      max: 1,
                      divisions: 2,
                      label: _currentLabel,
                      onChanged: (double value) {
                        setState(() {
                          _currentValue = value;
                          _updateSliderLabel();
                        });
                      },
                      activeColor: purpleDarkColor,
                      inactiveColor: purpleColor,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rencana pengurangan berat badan anda :',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hari target diet :\n90 hari',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Kebutuhan kalori harian : \n2445',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Target kalori harian : \n1750',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total pengurangan berat badan :\n5kg',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomFilledButton(
                  title: "Berikutnya",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const MoreDialog(),
                    );
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

class MoreDialog extends StatelessWidget {
  const MoreDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      content: Container(
        height: 326,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          top: 24,
          left: 22,
          right: 22,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lightBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cek kembali data anda',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              'Apakah data yang diisikan sudah benar?\nJenis kelamin : Pria\nBerat : 75 kg\nTinggi : 173 cm\nUsia : 21 tahun\nBudget kalori harian : 2445 kcal',
              style: blackTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomConfirmButton(
                      title: 'Batal',
                      onPressed: () {
                        Navigator.pop(context, '/onboarding-page-5');
                      },
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    CustomCorrectButton(
                      title: 'Benar',
                      onPressed: () {
                        Navigator.pushNamed(context, '/home-page');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
