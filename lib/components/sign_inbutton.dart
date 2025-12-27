import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final Function()? onTap;
  const mybutton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(23),
        margin: const EdgeInsets.symmetric(horizontal: 23),
        decoration: BoxDecoration(
          color: Colors.greenAccent.shade700,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}