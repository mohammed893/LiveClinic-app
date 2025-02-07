// presentation/patient/notifications/notifications.dart
import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/apptheme/components/custom_button.dart';


class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
         const Text('Notifications',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 455,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.lightgrey ,
                border: Border.all(
                    color: AppColors.Blue,
                    width: 2
                )

            ),
            child: Column(
              children: [
                Padding(
                  padding:const EdgeInsets.only(top: 15,bottom: 15,right: 10,left: 10),
                  child: buttonRow(),
                ),
                Container(
                  width: 380,
                  height: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.lightgrey,
                    border: Border.all(
                      color: AppColors.Blue,
                      width: 2
                    ),
                  ),
                  child: ListView.separated(
                      itemBuilder:(context,index)=> notificationItem(),
                      separatorBuilder:(context, index)=>const SizedBox(height: 10,),
                      itemCount: 5),
                ),
              ],
            ),
          ),

        ],
    );
  }

  Widget buttonRow(){
    return Row(
      children: [
        buildButton(
            width: 100,
            function:(){},
            text: 'View All',
            color: AppColors.Gray,
            borderColor:AppColors.Gray,
            textColor: Colors.black ,
        ),
      const SizedBox(width: 10,),
        buildButton(
            width: 90,
            function:(){},
            text: 'Unread',
            color: AppColors.lightgrey,
            borderColor:Colors.grey[300],
            textColor: Colors.black,
        ),
        const SizedBox(width: 10,),
        buildButton(
            width: 220,
            function:(){},
            text: 'Mark all as read ',
            color: AppColors.Blue,
            textColor: AppColors.lightgrey,
            borderColor:AppColors.Blue,
            icon:const Image(image: AssetImage('assets/images/check.png'),
             width: 30,
             height: 20,
          ),
        ),
      ],
    );
  }

  Widget notificationItem(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: AppColors.Blue,
            radius: 25,
          ),
        ),
       const Text('item'),
         const Spacer(),
        CircleAvatar(
          backgroundColor: AppColors.teal ,
          radius: 5,
        ),
       const SizedBox(width: 10,),
      ],
    );
  }
}
