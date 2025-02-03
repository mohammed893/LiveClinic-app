import 'package:flutter/material.dart';

Widget buildButton({
  required double width,
  required VoidCallback function,
  required String text,
  required color,
  textColor,
  height,
  bool loading = false,
  borderColor = Colors.white,
  Widget? icon,
}) => Container(
  width: width,
  height: height,
  child: TextButton(

    onPressed: function, //Add later

    style: TextButton.styleFrom(
      backgroundColor:color,

      side: BorderSide(
        color: borderColor,
        width: 2,
      ),
    ),
     child:loading? const CircularProgressIndicator() : Row(
       children: [
         if (icon != null) ...[
           icon,
       const SizedBox(width: 8),
       ],
         Text(
           text,
           style: TextStyle(
             color: textColor,
             fontWeight: FontWeight.bold,
             fontSize: 20.0,
           ),
         ),
  ]
     ),
  ),
);
