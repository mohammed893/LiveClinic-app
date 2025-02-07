// presentation/Authontication/selectType.dart
import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/apptheme/components/custom_button.dart';
import 'package:telemedicine/presentation/Authontication/Signup.dart';

class SelectType extends StatelessWidget {
  const  SelectType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightgrey,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 9,),
          const Text('Choose your path',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 12,),
          Row(
            children: [
              imageColumn(
                  (){},
                  'assets/images/Doctor.gif',
                  'Doctor'
              ),
             const SizedBox(width: 22,),
              imageColumn(
                   (){},
                  'assets/images/patient.gif',
                  'Patient'
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 8,),
          buildButton(
              width: 220,
              function: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>SignUp()));
              },
              text: '  Continue',
              textColor: AppColors.lightgrey,
              borderColor: AppColors.Blue,
              color: AppColors.Blue),
        ],
      ),
    );
  }
  Widget imageColumn(
      VoidCallback onTap,
      String url,
      String text
      ){
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child:Image(image: AssetImage(url),
            height: 200,
            width: 190,
           // fit: BoxFit.cover,
          ) ,
        ),
        const SizedBox(height: 20,),
        Text(text,
          style:const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
      ],
    );
  }
}
