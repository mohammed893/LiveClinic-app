// core/apptheme/components/appbar_icons.dart
import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/colors.dart';

Widget AppbarIcons(
     // add an onclick function
     String icon
     ){
    return GestureDetector(
      child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color:AppColors.lightgrey,
                    width: 1,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: AppColors.white,
                  radius: 10,
                  child: ImageIcon(AssetImage(icon), color: AppColors.Gray,)),
              ),
              onTap: (){}, // add onclick function from viewmodel later
    );
  }
