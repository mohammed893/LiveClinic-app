// core/components/custom_appbar.dart
 import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/apptheme/sanablecolors.dart';
// import 'package:liveclinic/Shared/style/colors.dart';

AppBar appbar(){

  return AppBar(
    backgroundColor:AppColors.Blue,
    leading: IconButton(
      onPressed:(){},
      icon: Icon( Icons.menu,
        color:AppColors.lightgrey,
        size: 30,
      ),
    ),
    actions: [
      IconButton(
        onPressed:(){},
        icon: Icon( Icons.person_2_rounded,
          color:AppColors.lightgrey,
          size: 30,
        )
      ),
    ],
  );
 }