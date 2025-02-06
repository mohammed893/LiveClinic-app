// core/components/custom_button.dart
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
}) =>
    Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: function, //Add later
        style: TextButton.styleFrom(
          backgroundColor: color,
          side: BorderSide(
            color: borderColor,
            width: 2,
          ),
        ),
        child: loading
            ? const CircularProgressIndicator()
            : Center( // Wrap with Center
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center items horizontally
                  children: [
                    if (icon != null) ...[
                      icon,
                      const SizedBox(width: 8),
                    ],
                    Expanded( // Wrap Text with Expanded
                      child: Text(
                        text,
                        textAlign: TextAlign.center, // Now textAlign works!
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );