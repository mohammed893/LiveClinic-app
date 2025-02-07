import 'package:flutter/material.dart';

Widget buildFormFiled({
  required String label,
  String? validatorString,
  labelColor,
  bool obscure = false,
  IconData? prefix,
  IconData? suffix,
  double radius = 20,
  TextEditingController? controller,
  VoidCallback ? suffixPressed,
  color,
  iconColor,
  ValueChanged<String>? onChanged,
  VoidCallback ? onTap,
  bool read = false  ,
})=>TextFormField(
  obscureText: obscure,
  validator: (value){
    if(value == null ||value.isEmpty){
      return validatorString ;
    }
    return null;
  },
  controller: controller ,
  decoration: InputDecoration(
    labelText: label,
    labelStyle: TextStyle(
      color: labelColor,
    ),
    prefix: Icon(prefix,
      color:iconColor ,
    ),
    suffixIcon: IconButton(
      onPressed: suffixPressed,
      icon: Icon(suffix,
        color: iconColor,
      ),),
    filled: true,
    fillColor: color,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
  ),
  onTap: onTap,
  onChanged:onChanged ,
  readOnly: read ,
);

