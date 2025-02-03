
import 'package:flutter/material.dart';
import 'package:liveclinic/Authontication/selectType.dart';
import 'package:liveclinic/Shared/style/colors.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(onPressed: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context)=>const SelectType())
        );
      },
        backgroundColor:clr(1),
        child:Icon(Icons.arrow_forward_ios_rounded,
          color:clr(4),
        ),
      ),
      backgroundColor: clr(4),
      body: Center(
        child: Column(
          children: [
            SizedBox(height:MediaQuery.of(context).size.height / 8,),
            Image.asset('assets/images/onboarding.png',

            ),
            SizedBox(height:MediaQuery.of(context).size.height / 40,),
            const Text('Live Clinic ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            const  Text('book an appointment with ',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const  Text('any doctor any time',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
