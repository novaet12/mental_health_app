import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final bool obscureText;
  final String hintText;

  const MyTextfield({super.key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.greenAccent.shade700),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.greenAccent.shade400),
                ),
                fillColor: Colors.grey.shade300,
                filled: true,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey[400]),
              ),
            ),
          );
  }
}