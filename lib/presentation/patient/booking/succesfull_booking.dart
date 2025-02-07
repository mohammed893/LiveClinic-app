// presentation/patient/booking/succesfull_booking.dart
import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/assets.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/apptheme/components/custom_appbar.dart';
//import 'package:telemedicine/core/components/custom_bottom_nav_bar.dart';
import 'package:telemedicine/core/apptheme/components/custom_button.dart';

// remove scaffold stuff after applying the logic

class SuccessfulBookingScreen extends StatelessWidget {
  const SuccessfulBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white ,
      appBar: appbar(),
     // bottomNavigationBar: bottomBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                Assets.successfulappointment, 
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your request has been placed successfully',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40), 
            buildButton(
               color: AppColors.Blue,
               function: (){},
               text: 'continue',
               width: 300,
               textColor: AppColors.white,
                ),
          ],
        ),
      ),
    );
  }
}