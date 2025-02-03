 import 'package:flutter/material.dart';
import 'package:liveclinic/Shared/style/colors.dart';

AppBar appbar(){

  return AppBar(
    backgroundColor:clr(1),
    leading: IconButton(
      onPressed:(){},
      icon: Icon( Icons.menu,
        color:clr(4),
        size: 40,
      ),
    ),
    actions: [
      IconButton(
        onPressed:(){},
        icon: Icon( Icons.person,
          color:clr(4),
          size: 40,
        ),
      ),
    ],
  );
 }