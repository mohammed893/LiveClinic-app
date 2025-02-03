import 'package:flutter/material.dart';
import 'package:liveclinic/Authontication/Signup.dart';
import 'package:liveclinic/Authontication/login.dart';
import 'package:liveclinic/Shared/custom/custom_button.dart';
import 'package:liveclinic/Shared/style/colors.dart';

class AuthHome  extends StatelessWidget {
  const AuthHome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:clr(4) ,
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
                color: clr(1),
                textColor: clr(4),
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
                textColor: clr(1),
                borderColor: clr(1)
            ),
          ],
        ),
      ),
    );
  }
}
