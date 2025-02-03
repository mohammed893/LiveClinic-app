import 'package:flutter/material.dart';
import 'package:liveclinic/Shared/custom/custom_appbar.dart';
import 'package:liveclinic/Shared/custom/custom_bottom_nav_bar.dart';
import 'package:liveclinic/Shared/custom/custom_button.dart';
import 'package:liveclinic/Shared/style/colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      bottomNavigationBar: bottomBar(),
      backgroundColor: clr(4),
      body: Column(
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
              color: clr(4),
                border: Border.all(
                    color: clr(1),
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
                    color: clr(4),
                    border: Border.all(
                      color: clr(1),
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
      ),
    );
  }
  Widget buttonRow(){
    return Row(
      children: [
        buildButton(
            width: 100,
            function:(){},
            text: 'View All',
            color: clr(5),
            borderColor:clr(5),
            textColor: clr(6)
        ),
      const SizedBox(width: 10,),
        buildButton(
            width: 90,
            function:(){},
            text: 'Unread',
            color: clr(4),
            borderColor:Colors.grey[300],
            textColor: clr(6)
        ),
        const SizedBox(width: 10,),
        buildButton(
            width: 220,
            function:(){},
            text: 'Mark all as read ',
            color: clr(1),
            textColor: clr(4),
            borderColor:clr(1),
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
            backgroundColor: clr(1),
            radius: 25,
          ),
        ),
       const Text('item'),
         const Spacer(),
        CircleAvatar(
          backgroundColor: clr(3),
          radius: 5,
        ),
       const SizedBox(width: 10,),
      ],
    );
  }
}
