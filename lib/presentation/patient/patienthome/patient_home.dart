// presentation/patient/patienthome/patient_home.dart

import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/apptheme/components/custom_button.dart';
import 'package:telemedicine/core/apptheme/components/custom_search_bar.dart';

class PatientHome extends StatelessWidget {
   PatientHome({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Search(searchController:searchController ),
            const SizedBox(height: 20),
            appointmentContainer(),
            const SizedBox(height: 20),
            textRow(title: ' Saved', onShowAll:(){}),
            doctorList(3),
            const SizedBox(height: 20),
            textRow(title: ' History', onShowAll: (){}),
            doctorList(2),
          ],
        
        ),
      );
    }
    
  Widget appointmentContainer(){
    return Container(
      width: 370,
      height: 220,
      decoration: BoxDecoration(
        color: AppColors.lightgrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Text('Upcoming Appointments',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const  SizedBox(height: 10,),
         const Row(
            children: [
              Image(image: AssetImage('assets/images/bell.png',
              ),
                width: 90,
                height: 70,
              ),
               Text('Session with Dr. ',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
         const Text(' 9:30 AM,Sun, 24jun',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
         const  SizedBox(height: 15,),
          buildButton(
              width: 80,
              function:(){} ,
              text: '  visit',
              color: AppColors.Blue,
              borderColor: AppColors.Blue ,
              textColor: AppColors.lightgrey
          ),

        ],
      ),
    );
  }

  Widget textRow({
    required String title,
    required VoidCallback onShowAll}){
    return Row(
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
       const Spacer(),
        TextButton(
          onPressed: onShowAll,
          style: TextButton.styleFrom(foregroundColor: AppColors.teal),
          child: const Text('Show all'),
        ),

      ],
    );
  }

   Widget doctorList(int count,) {
     return ListView.separated(
       shrinkWrap: true,
       physics: const NeverScrollableScrollPhysics(),
       itemBuilder: (context, index) => doctorContainer(),
       separatorBuilder: (context, index) => const SizedBox(height: 10),
       itemCount: count,
     );
   }

  Widget doctorContainer(){
    return Container(
      width:350 ,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.lightgrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Row(
        children: [
        const  SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: AppColors.Blue,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('    doctor\'s name',style: TextStyle(),),
              Text('describtion',style: TextStyle(),),
            ],
          ),
          const Spacer(),
          const Text('9:40 AM')
        ],
      ),
    );
  }
}
