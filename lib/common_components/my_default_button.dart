// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  Color color;
  BorderRadius borderRadius;
  // Function onTap;
  String text;
  MyButton({super.key, required this.color, required this.borderRadius , required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color:color, borderRadius: borderRadius),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
