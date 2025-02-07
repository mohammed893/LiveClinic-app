// presentation/Authontication/authHome.dart
import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/apptheme/components/custom_button.dart';
import 'package:telemedicine/presentation/Authontication/Signup.dart';
import 'package:telemedicine/presentation/Authontication/login.dart';


class AuthHome  extends StatelessWidget {
  const AuthHome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.lightgrey,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 4,),
            const Text('Live Clinic ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const  Text('book an appointment with ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Text(
              'any doctor any time ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 7,),

            buildButton(
                width: 220,
                function: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Login()));
                },
                text: 'Log in',
                color: AppColors.Blue,
                textColor: AppColors.lightgrey,
            ),
           const SizedBox(height: 20,),
            buildButton(
                width: 220,
                function: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>SignUp()));
                },
                text: 'Sign up',
                color:  Colors.transparent,
                textColor: AppColors.Blue,
                borderColor: AppColors.Blue
            ),
          ],
        ),
      ),
    );
  }
}
