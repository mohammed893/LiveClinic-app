// presentation/patient/chatbot.dart/voicebot.dart
import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/assets.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/apptheme/components/appbar_icons.dart';
import 'package:telemedicine/core/apptheme/components/custom_button.dart';

class Voicebot extends StatelessWidget {
  const Voicebot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: AppColors.Blue, 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppbarIcons(Assets.Menu),
                  AppbarIcons(Assets.CircleXmark),
                 
                ],
              ),
            ),

            Expanded(
              child: Center(
                child: SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Image.asset(Assets.CircleWaveformLines),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: [
                buildButton(
                  color: AppColors.white,
                  width: 132.0,
                  height: 55.0,
                  function: () {},
                  text: "Skip",
                  textColor: Colors.black,
                ),
                buildButton(
                  color: AppColors.white,
                  width: 132,
                  height: 55,
                  function: () {},
                  text: "Repeat",
                  textColor: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 16), 
          ],
        ),
      ),
    );
  }
}